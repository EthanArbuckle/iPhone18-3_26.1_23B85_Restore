@interface PDFDestination
- (CGFloat)zoom;
- (CGPoint)point;
- (NSComparisonResult)compare:(PDFDestination *)destination;
- (PDFDestination)init;
- (PDFDestination)initWithDictionary:(CGPDFDictionary *)dictionary forDocument:(id)document;
- (PDFDestination)initWithPage:(PDFPage *)page atPoint:(CGPoint)point;
- (PDFPage)page;
- (__CFArray)createArrayRef;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)document;
- (id)pageIfExists;
- (void)commonInit;
- (void)dealloc;
- (void)setZoom:(CGFloat)zoom;
@end

@implementation PDFDestination

- (PDFDestination)init
{
  v6.receiver = self;
  v6.super_class = PDFDestination;
  v2 = [(PDFDestination *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(PDFDestination *)v2 commonInit];
    v4 = v3;
  }

  return v3;
}

- (PDFDestination)initWithPage:(PDFPage *)page atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = page;
  if (v7)
  {
    v8 = [(PDFDestination *)self init];
    if (!v8)
    {
      selfCopy = 0;
      goto LABEL_7;
    }

    v9 = v8;
    document = [(PDFPage *)v7 document];
    objc_storeWeak(&v9->_private->document, document);

    objc_storeWeak(&v9->_private->page, v7);
    v9->_private->type = 0;
    v9->_private->left = x;
    v9->_private->top = y;
    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_7:
  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v4[1] + 32) = self->_private->type;
  *(v4[1] + 40) = self->_private->left;
  *(v4[1] + 48) = self->_private->top;
  *(v4[1] + 56) = self->_private->right;
  *(v4[1] + 64) = self->_private->bottom;
  *(v4[1] + 72) = self->_private->zoom;
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  objc_storeWeak((v4[1] + 16), WeakRetained);

  return v4;
}

- (void)dealloc
{
  v3 = self->_private;
  if (v3 && v3->array)
  {
    CGPDFArrayRelease();
  }

  v4.receiver = self;
  v4.super_class = PDFDestination;
  [(PDFDestination *)&v4 dealloc];
}

- (id)document
{
  WeakRetained = objc_loadWeakRetained(&self->_private->document);

  return WeakRetained;
}

- (PDFPage)page
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  if (!WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_private->document);
    if (v4 && (array = self->_private->array, v4, array))
    {
      document = [(PDFDestination *)self document];
      value = 0;
      if (CGPDFArrayGetDictionary(self->_private->array, 0, &value))
      {
        document2 = [(PDFDestination *)self document];
        WeakRetained = [document2 findPageWithCGPDFDictionaryPageRef:value];
      }

      else
      {
        v10 = 0;
        if (CGPDFArrayGetInteger(self->_private->array, 0, &v10) && (v8 = v10, v8 < [document pageCount]))
        {
          WeakRetained = [document pageAtIndex:v10];
        }

        else
        {
          WeakRetained = 0;
        }
      }

      objc_storeWeak(&self->_private->page, WeakRetained);
    }

    else
    {
      WeakRetained = 0;
    }
  }

  return WeakRetained;
}

- (id)pageIfExists
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);

  return WeakRetained;
}

- (CGPoint)point
{
  if ([(PDFDestination *)self type])
  {
    top = 3.40282347e38;
    left = 3.40282347e38;
  }

  else
  {
    v5 = self->_private;
    left = v5->left;
    top = v5->top;
  }

  result.y = top;
  result.x = left;
  return result;
}

- (CGFloat)zoom
{
  if ([(PDFDestination *)self type])
  {
    return 3.40282347e38;
  }

  else
  {
    return self->_private->zoom;
  }
}

- (void)setZoom:(CGFloat)zoom
{
  if (![(PDFDestination *)self type])
  {
    self->_private->zoom = zoom;
  }
}

- (NSComparisonResult)compare:(PDFDestination *)destination
{
  v4 = destination;
  page = [(PDFDestination *)self page];
  page2 = [(PDFDestination *)v4 page];
  document2 = 0;
  v8 = NSOrderedAscending;
  document = 0;
  if (page2)
  {
    if (page)
    {
      document = [page document];
      document2 = [page2 document];
      if (document2 == document)
      {
        v10 = [document indexForPage:page];
        v11 = [document2 indexForPage:page2];
        if (v10 <= v11)
        {
          if (v10 >= v11)
          {
            [(PDFDestination *)self point];
            MaxY = v12;
            [(PDFDestination *)v4 point];
            v15 = v14;
            if (MaxY == 3.40282347e38)
            {
              [page boundsForBox:0];
              MaxY = PDFRectGetMaxY(v16, v17, v18, v19);
            }

            if (v15 == 3.40282347e38)
            {
              [page2 boundsForBox:0];
              v15 = PDFRectGetMaxY(v20, v21, v22, v23);
            }

            if (MaxY > v15)
            {
              v8 = NSOrderedAscending;
            }

            else
            {
              v8 = (MaxY < v15);
            }
          }

          else
          {
            v8 = NSOrderedAscending;
          }
        }

        else
        {
          v8 = NSOrderedDescending;
        }
      }
    }
  }

  return v8;
}

- (id)description
{
  page = [(PDFDestination *)self page];
  if (page)
  {
    document = [(PDFDestination *)self document];
    v5 = [document indexForPage:page];

    v6 = v5;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  type = [(PDFDestination *)self type];
  if (type <= 2)
  {
    if (type > 0)
    {
      if (type == 1)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Fit, page = %d\n", v6, v13, v14, v15, v16];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"FitH, page = %d, t = %.1f\n", v6, *&self->_private->top, v14, v15, v16];
      }

      goto LABEL_23;
    }

    if (type == -1)
    {
      v9 = 0;
      goto LABEL_24;
    }

    if (!type)
    {
      if (self->_private->left == 3.40282347e38)
      {
        v8 = @"N/A";
      }

      else
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1f", *&self->_private->left];
      }

      if (self->_private->top == 3.40282347e38)
      {
        v11 = @"N/A";
      }

      else
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1f", *&self->_private->top];
      }

      if (self->_private->zoom == 3.40282347e38)
      {
        v12 = @"N/A";
      }

      else
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1f", *&self->_private->zoom];
      }

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"XYZ, page = %d, left = %@, top = %@, zoom = %@\n", v6, v8, v11, v12];

      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (type <= 4)
  {
    if (type == 3)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"FitV, page = %d, l = %.1f\n", v6, *&self->_private->left, v14, v15, v16];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"FitR, page = %d, l = %.1f, b = %.1f, r = %.1f, t = %.1f\n", v6, *&self->_private->left, *&self->_private->bottom, *&self->_private->right, *&self->_private->top];
    }

    goto LABEL_23;
  }

  if (type == 5)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"FitB, page = %d\n", v6, v13, v14, v15, v16];
  }

  else
  {
    if (type != 6)
    {
LABEL_22:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"FitBV, page = %d, l = %.1f\n", v6, *&self->_private->left, v14, v15, v16];
      goto LABEL_23;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"FitBH, page = %d, t = %.1f\n", v6, *&self->_private->top, v14, v15, v16];
  }

  v9 = LABEL_23:;
LABEL_24:

  return v9;
}

- (PDFDestination)initWithDictionary:(CGPDFDictionary *)dictionary forDocument:(id)document
{
  documentCopy = document;
  array = 0;
  value = 0;
  __s1 = 0;
  v7 = [(PDFDestination *)self init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_20;
  }

  objc_storeWeak(&v7->_private->document, documentCopy);
  if (!CGPDFDictionaryGetObject(dictionary, "Dest", &value) && !CGPDFDictionaryGetObject(dictionary, "D", &value))
  {
    goto LABEL_20;
  }

  if (CGPDFObjectGetValue(value, kCGPDFObjectTypeString, 0) || CGPDFObjectGetValue(value, kCGPDFObjectTypeName, 0))
  {
    dict = 0;
    [documentCopy documentRef];
    Destination = CGPDFDocumentGetDestination();
    value = Destination;
    if (!Destination)
    {
LABEL_34:
      v11 = v8;
      goto LABEL_35;
    }

    if (CGPDFObjectGetValue(Destination, kCGPDFObjectTypeDictionary, &dict) && !CGPDFDictionaryGetObject(dict, "D", &value))
    {
      goto LABEL_20;
    }
  }

  if (!CGPDFObjectGetValue(value, kCGPDFObjectTypeArray, &array))
  {
    goto LABEL_20;
  }

  v8->_private->array = CGPDFArrayRetain();
  if (!CGPDFArrayGetName(array, 1uLL, &__s1))
  {
    goto LABEL_20;
  }

  v10 = __s1;
  if (!strcmp(__s1, "XYZ"))
  {
    v8->_private->type = 0;
    if (get_number(array, 2uLL, &v8->_private->left))
    {
      if (get_number(array, 3uLL, &v8->_private->top))
      {
        if (get_number(array, 4uLL, &v8->_private->zoom))
        {
          v12 = v8->_private;
          if (v12->zoom == 0.0)
          {
            v12->zoom = 3.40282347e38;
          }
        }
      }
    }

    goto LABEL_34;
  }

  if (!strcmp(v10, "Fit"))
  {
    v13 = v8->_private;
    v14 = 1;
LABEL_27:
    v13->type = v14;
    goto LABEL_34;
  }

  if (!strcmp(v10, "FitH"))
  {
    v8->_private->type = 2;
LABEL_29:
    v15 = array;
    p_top = &v8->_private->top;
LABEL_32:
    v19 = 2;
LABEL_33:
    get_number(v15, v19, p_top);
    goto LABEL_34;
  }

  if (!strcmp(v10, "FitV"))
  {
    v17 = v8->_private;
    v18 = 3;
LABEL_31:
    v17->type = v18;
    v15 = array;
    p_top = &v8->_private->left;
    goto LABEL_32;
  }

  if (!strcmp(v10, "FitR"))
  {
    v8->_private->type = 4;
    if (!get_number(array, 2uLL, &v8->_private->left) || !get_number(array, 3uLL, &v8->_private->bottom) || !get_number(array, 4uLL, &v8->_private->right))
    {
      goto LABEL_34;
    }

    v15 = array;
    p_top = &v8->_private->top;
    v19 = 5;
    goto LABEL_33;
  }

  if (!strcmp(v10, "FitB"))
  {
    v13 = v8->_private;
    v14 = 5;
    goto LABEL_27;
  }

  if (!strcmp(v10, "FitBH"))
  {
    v8->_private->type = 6;
    goto LABEL_29;
  }

  if (!strcmp(v10, "FitBV"))
  {
    v17 = v8->_private;
    v18 = 7;
    goto LABEL_31;
  }

  NSLog(&cfstr_UnknownPdfDest.isa, v10);
LABEL_20:
  v11 = 0;
LABEL_35:

  return v11;
}

- (void)commonInit
{
  v3 = objc_alloc_init(PDFDestinationPrivate);
  v4 = self->_private;
  self->_private = v3;

  objc_storeWeak(&self->_private->document, 0);
  objc_storeWeak(&self->_private->page, 0);
  self->_private->type = -1;
  self->_private->left = 3.40282347e38;
  self->_private->top = 3.40282347e38;
  self->_private->right = 3.40282347e38;
  self->_private->bottom = 3.40282347e38;
  self->_private->zoom = 3.40282347e38;
}

- (__CFArray)createArrayRef
{
  v53 = *MEMORY[0x1E69E9840];
  v52 = 0;
  *cf = 0u;
  *v51 = 0u;
  page = [(PDFDestination *)self page];
  v4 = MEMORY[0x1E696AEC0];
  document = [page document];
  v6 = [v4 stringWithFormat:@"/#%ld", objc_msgSend(document, "indexForPage:", page) + 1];
  values = v6;

  if (!v6)
  {
    goto LABEL_57;
  }

  v6 = 0;
  v7 = self->_private;
  type = v7->type;
  if (type > 3)
  {
    if (type <= 5)
    {
      if (type != 4)
      {
        v9 = @"/FitB";
        goto LABEL_10;
      }

      cf[0] = @"/FitR";
      left = v7->left;
      p_left = &v7->left;
      if (left == 3.40282347e38)
      {
        v20 = *MEMORY[0x1E695E738];
      }

      else
      {
        v20 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, p_left);
      }

      cf[1] = v20;
      if (v20)
      {
        v28 = self->_private;
        bottom = v28->bottom;
        p_bottom = &v28->bottom;
        v31 = bottom == 3.40282347e38 ? *MEMORY[0x1E695E738] : CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, p_bottom);
        v51[0] = v31;
        if (v31)
        {
          v36 = self->_private;
          right = v36->right;
          p_right = &v36->right;
          v39 = right == 3.40282347e38 ? *MEMORY[0x1E695E738] : CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, p_right);
          v51[1] = v39;
          if (v39)
          {
            v40 = self->_private;
            top = v40->top;
            p_top = &v40->top;
            v43 = top == 3.40282347e38 ? *MEMORY[0x1E695E738] : CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, p_top);
            v52 = v43;
            if (v43)
            {
              v10 = 6;
              goto LABEL_29;
            }
          }
        }
      }

LABEL_56:
      v6 = 0;
      goto LABEL_57;
    }

    if (type != 6)
    {
      if (type != 7)
      {
        goto LABEL_57;
      }

      v11 = @"/FitBV";
      goto LABEL_16;
    }

    v21 = @"/FitBH";
LABEL_23:
    cf[0] = v21;
    v22 = v7->top;
    v12 = &v7->top;
    v14 = v22;
LABEL_24:
    if (v14 == 3.40282347e38)
    {
      v23 = *MEMORY[0x1E695E738];
    }

    else
    {
      v23 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, v12);
    }

    cf[1] = v23;
    if (v23)
    {
      v10 = 3;
      goto LABEL_29;
    }

    goto LABEL_56;
  }

  if (type > 1)
  {
    if (type != 2)
    {
      v11 = @"/FitV";
LABEL_16:
      cf[0] = v11;
      v13 = v7->left;
      v12 = &v7->left;
      v14 = v13;
      goto LABEL_24;
    }

    v21 = @"/FitH";
    goto LABEL_23;
  }

  if (!type)
  {
    cf[0] = @"/XYZ";
    v16 = v7->left;
    v15 = &v7->left;
    if (v16 == 3.40282347e38)
    {
      v17 = *MEMORY[0x1E695E738];
    }

    else
    {
      v17 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, v15);
    }

    cf[1] = v17;
    if (v17)
    {
      v24 = self->_private;
      v26 = v24->top;
      v25 = &v24->top;
      v27 = v26 == 3.40282347e38 ? *MEMORY[0x1E695E738] : CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, v25);
      v51[0] = v27;
      if (v27)
      {
        v32 = self->_private;
        zoom = v32->zoom;
        p_zoom = &v32->zoom;
        v35 = zoom == 3.40282347e38 ? *MEMORY[0x1E695E738] : CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, p_zoom);
        v51[1] = v35;
        if (v35)
        {
          v10 = 5;
          goto LABEL_29;
        }
      }
    }

    goto LABEL_56;
  }

  if (type == 1)
  {
    v9 = @"/Fit";
LABEL_10:
    cf[0] = v9;
    v10 = 2;
LABEL_29:
    v6 = CFArrayCreate(*MEMORY[0x1E695E480], &values, v10, MEMORY[0x1E695E9C0]);
  }

LABEL_57:
  if (cf[1])
  {
    v44 = CFGetTypeID(cf[1]);
    if (v44 != CFNullGetTypeID())
    {
      CFRelease(cf[1]);
    }
  }

  if (v51[0])
  {
    v45 = CFGetTypeID(v51[0]);
    if (v45 != CFNullGetTypeID())
    {
      CFRelease(v51[0]);
    }
  }

  if (v51[1])
  {
    v46 = CFGetTypeID(v51[1]);
    if (v46 != CFNullGetTypeID())
    {
      CFRelease(v51[1]);
    }
  }

  if (v52)
  {
    v47 = CFGetTypeID(v52);
    if (v47 != CFNullGetTypeID())
    {
      CFRelease(v52);
    }
  }

  return v6;
}

@end