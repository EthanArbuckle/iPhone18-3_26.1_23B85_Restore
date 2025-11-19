@interface CPArchive
- (CPArchive)init;
- (id)html;
- (id)plainText;
- (id)webArchiveData;
- (void)addSelection:(CGPDFSelection *)a3;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
@end

@implementation CPArchive

- (id)webArchiveData
{
  v102 = *MEMORY[0x1E69E9840];
  if (self->webArchiveData)
  {
    return self->webArchiveData;
  }

  [(CPArchive *)self html];
  result = self->htmlString;
  if (result)
  {
    result = [result dataUsingEncoding:4 allowLossyConversion:1];
    if (result)
    {
      v4 = result;
      result = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/"];
      if (result)
      {
        v5 = result;
        result = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.WebKit"];
        if (result || (result = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/WebKit.framework"]) != 0)
        {
          v6 = result;
          result = [result classNamed:@"WebResource"];
          if (result)
          {
            v7 = result;
            result = [v6 classNamed:@"WebArchive"];
            if (result)
            {
              v8 = result;
              v9 = [[v7 alloc] initWithData:v4 URL:v5 MIMEType:@"text/html" textEncodingName:@"utf-8" frameName:0];
              if (!v9)
              {
                return self->webArchiveData;
              }

              v10 = v9;
              Count = CFArrayGetCount(self->imageNodes);
              v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
              if (!Count)
              {
                goto LABEL_129;
              }

              v90 = v10;
              allocator = *MEMORY[0x1E695E480];
              theString = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
              v13 = 8 * Count;
              v14 = malloc_type_malloc(v13, 0x2004093837F09uLL);
              v103.location = 0;
              v103.length = Count;
              CFArrayGetValues(self->imageNodes, v103, v14);
              v15 = 0;
              v16 = 0;
              v17 = 0;
              do
              {
                for (i = v14[v15]; i; i = i[1])
                {
                  if (*i == 517)
                  {
                    break;
                  }
                }

                if (i == v17)
                {
                  i = v17;
                }

                else
                {
                  if (v17)
                  {
                    CGPDFNodeLoadPaths(&v14[v16], v15 - v16);
                  }

                  v16 = v15;
                }

                ++v15;
                v17 = i;
              }

              while (v15 != Count);
              v92 = v12;
              v93 = v7;
              v88 = Count;
              v89 = v8;
              CGPDFNodeLoadPaths(&v14[v16], Count - v16);
              v19 = 0;
              while (1)
              {
                v20 = v14[v19 / 8];
                if (v20)
                {
                  v21 = *v20;
                  if (*v20 == 513 || v21 == 258)
                  {
                    Image = CGPDFNodeCreateImage(v14[v19 / 8]);
                    goto LABEL_91;
                  }

                  if (v21 == 257)
                  {
                    break;
                  }
                }

LABEL_114:
                v19 += 8;
                if (v13 == v19)
                {
                  CGPDFNodePurgePaths(v14, v88);
                  free(v14);
                  CFRelease(theString);
                  v8 = v89;
                  v10 = v90;
                  v12 = v92;
LABEL_129:
                  v86 = [[v8 alloc] initWithMainResource:v10 subresources:v12 subframeArchives:0];
                  if (v86)
                  {
                    v87 = v86;
                    self->webArchiveData = [v86 data];
                  }

                  return self->webArchiveData;
                }
              }

              v22 = *(v20 + 120);
              v23 = CPPDFCreateMaskingImageFromStream(v22);
              v24 = 0;
              valuePtr = 0.0;
              if (!v23)
              {
                v24 = CPPDFCreateMaskingColorsFromStream(v22, &valuePtr);
              }

              v98 = 0;
              PageRotation = CGPDFNodeGetPageRotation(v20);
              x = *(v20 + 64);
              width = *(v20 + 80);
              y = *(v20 + 72);
              height = *(v20 + 88);
              v28 = *(v20 + 136);
              v29 = *(v20 + 144);
              v30 = *(v20 + 152);
              v31 = *(v20 + 160);
              *values = *(v20 + 168);
              v32 = v28 * v31 - v29 * v30;
              if (v23)
              {
                v33 = 0;
              }

              else
              {
                v33 = v24 == 0;
              }

              if (v33 && PageRotation == 0.0 && ((v34 = fabs(v29), v35 = fabs(v30), v32 > 0.0) ? (v36 = v34 > 1.0) : (v36 = 1), !v36 ? (v37 = v35 > 1.0) : (v37 = 1), !v37))
              {
                v38 = vabdd_f64(v31, height);
                v39 = vabdd_f64(v28, width) > 1.0 || v38 > 1.0;
                if (!v39 && *(v20 + 184) == 1.0 && !*(v20 + 192) && CGPDFNodeHasRectClips(v20))
                {
                  Image = *(v20 + 128);
                  if (Image)
                  {
                    CFRetain(*(v20 + 128));
LABEL_91:
                    v69 = 0;
                    goto LABEL_92;
                  }

                  if (!v22)
                  {
                    Image = 0;
                    goto LABEL_91;
                  }

                  LODWORD(transform.a) = 0;
                  v69 = CGPDFStreamCopyData(v22, &transform);
                  if (!v69)
                  {
                    goto LABEL_125;
                  }

                  if (LODWORD(transform.a))
                  {
                    if (LODWORD(transform.a) == 2)
                    {
                      CFStringReplaceAll(theString, @"image/jp2");
                      goto LABEL_125;
                    }

                    if (LODWORD(transform.a) == 1)
                    {
                      CFStringReplaceAll(theString, @"image/jpeg");
                      if (CPPDFCreateJPEGImageFromImageStream(v22, v69, 0, &v98))
                      {
                        CFRelease(v69);
                        Image = 0;
                        v69 = v98;
                        goto LABEL_92;
                      }

LABEL_125:
                      Image = 0;
LABEL_92:
                      if (!Image)
                      {
                        goto LABEL_107;
                      }

                      Mutable = CFDataCreateMutable(allocator, 0);
                      if (Mutable)
                      {
                        v71 = Mutable;
                        if (CGPDFNodeCreateImageData_predicate != -1)
                        {
                          dispatch_once(&CGPDFNodeCreateImageData_predicate, &__block_literal_global_23067);
                        }

                        ImageData_f = CGPDFNodeCreateImageData_f(v71, @"public.png", 1, 0);
                        if (ImageData_f)
                        {
                          v73 = ImageData_f;
                          v74 = *(v20 + 80) * *(v20 + 88);
                          v75 = Image[5] * Image[6];
                          v76 = v74 * 256.0;
                          v77 = v75 / v74;
                          if (v75 >= v76)
                          {
                            v77 = 256.0;
                          }

                          valuePtr = sqrt(v77) * 72.0;
                          v78 = CFNumberCreate(allocator, kCFNumberCGFloatType, &valuePtr);
                          *&transform.a = xmmword_1E6E34230;
                          values[0] = v78;
                          values[1] = v78;
                          v79 = CFDictionaryCreate(allocator, &transform, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                          CFRelease(v78);
                          if (CGPDFNodeCreateImageData_predicate_38 != -1)
                          {
                            dispatch_once(&CGPDFNodeCreateImageData_predicate_38, &__block_literal_global_41_23069);
                          }

                          CGPDFNodeCreateImageData_f_37(v73, Image, v79);
                          CFRelease(v79);
                          if (CGPDFNodeCreateImageData_predicate_44 != -1)
                          {
                            dispatch_once(&CGPDFNodeCreateImageData_predicate_44, &__block_literal_global_47_23070);
                          }

                          CGPDFNodeCreateImageData_f_43(v73);
                          CFRelease(v73);
                          CFStringReplaceAll(theString, @"image/png");
                          goto LABEL_106;
                        }

                        CFRelease(v71);
                      }

                      v71 = v69;
LABEL_106:
                      CFRelease(Image);
                      v69 = v71;
LABEL_107:
                      if (v69)
                      {
                        ImageName = CGPDFNodeCreateImageName(v20);
                        if (ImageName)
                        {
                          v81 = ImageName;
                          v82 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:CFStringGetLength(ImageName) + 1];
                          [v82 appendString:@"/"];
                          [v82 appendString:v81];
                          v83 = [MEMORY[0x1E695DFF8] fileURLWithPath:v82];
                          if (v83)
                          {
                            v84 = [[v93 alloc] initWithData:v69 URL:v83 MIMEType:theString textEncodingName:0 frameName:0];
                            if (v84)
                            {
                              v85 = v84;
                              [v92 addObject:v84];
                            }
                          }

                          CFRelease(v81);
                        }

                        CFRelease(v69);
                      }

                      goto LABEL_114;
                    }

                    Image = 0;
                  }

                  else
                  {
                    Image = CPPDFCreateImageFromRawData(v22, v69, 0, 0);
                  }

                  CFRelease(v69);
                  goto LABEL_91;
                }

                Image = CGPDFNodeCreateImage(v20);
              }

              else
              {
                v41 = CGPDFNodeCreateImage(v20);
                Image = v41;
                if (v24)
                {
                  if (v41)
                  {
                    ColorSpace = CGImageGetColorSpace(v41);
                    v43 = ColorSpace ? *(*(ColorSpace + 3) + 48) : 0;
                    if (v43 == *&valuePtr)
                    {
                      v44 = CGImageCreateWithMaskingColors(Image, v24);
                      CFRelease(Image);
                      Image = v44;
                    }
                  }

                  free(v24);
                }

                if (v23)
                {
                  if (Image)
                  {
                    v45 = CPImageCreateWithMask(Image, v23);
                    CFRelease(Image);
                    Image = v45;
                  }

                  CFRelease(v23);
                }
              }

              if (Image)
              {
                v46 = fabs(v32);
                v47 = Image[6] * Image[5];
                v48 = v46 * 256.0;
                v49 = v47 / v46;
                if (v47 >= v48)
                {
                  v50 = 256.0;
                }

                else
                {
                  v50 = v49;
                }

                if (PageRotation != 0.0)
                {
                  v51 = __sincos_stret(PageRotation);
                  transform.a = v51.__cosval;
                  transform.b = v51.__sinval;
                  transform.c = -v51.__sinval;
                  transform.d = v51.__cosval;
                  transform.tx = 0.0;
                  transform.ty = 0.0;
                  v104.origin.x = x;
                  v104.origin.y = y;
                  v104.size.width = width;
                  v104.size.height = height;
                  v105 = CGRectApplyAffineTransform(v104, &transform);
                  x = v105.origin.x;
                  y = v105.origin.y;
                  width = v105.size.width;
                  height = v105.size.height;
                }

                v52 = sqrt(v50);
                v53 = vcvtpd_u64_f64(v52 * width);
                v91 = v52;
                v54 = vcvtpd_u64_f64(v52 * height);
                v55 = CGImageGetColorSpace(Image);
                if (v55 && ((v56 = v55, CGColorSpaceUsesExtendedRange(v55)) || CGColorSpaceIsWideGamutRGB(v56)))
                {
                  v57 = CGColorSpaceCreateWithName(@"kCGColorSpaceExtendedSRGB");
                  v58 = CGBitmapContextCreateWithData(0, v53, v54, 0x10uLL, 0, v57, 0x1101u, 0, 0);
                }

                else
                {
                  v57 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
                  v58 = CGBitmapContextCreateWithData(0, v53, v54, 8uLL, 4 * v53, v57, 1u, 0, 0);
                }

                v59 = v58;
                if (v58)
                {
                  v106.size.width = v53;
                  v106.size.height = v54;
                  v106.origin.x = 0.0;
                  v106.origin.y = 0.0;
                  CGContextClearRect(v58, v106);
                  if (*(v59 + 16) == 1129601108)
                  {
                    v66 = *(v59 + 96);
                    v67 = vmulq_n_f64(*(v66 + 40), v91);
                    *(v66 + 24) = vmulq_n_f64(*(v66 + 24), v91);
                    *(v66 + 40) = v67;
                  }

                  else
                  {
                    handle_invalid_context("CGContextScaleCTM", v59, v60, v61, v62, v63, v64, v65);
                  }

                  if (*(v59 + 16) == 1129601108)
                  {
                    *(*(v59 + 96) + 56) = vmlsq_lane_f64(vmlsq_lane_f64(*(*(v59 + 96) + 56), *(*(v59 + 96) + 24), x, 0), *(*(v59 + 96) + 40), y, 0);
                  }

                  else
                  {
                    handle_invalid_context("CGContextTranslateCTM", v59, v60, v61, v62, v63, v64, v65);
                  }

                  if (PageRotation != 0.0)
                  {
                    CGContextRotateCTM(v59, PageRotation);
                  }

                  CGPDFNodeApplyClipToContext(v20, v59);
                  transform.a = v28;
                  transform.b = v29;
                  transform.c = v30;
                  transform.d = v31;
                  *&transform.tx = *values;
                  CGContextConcatCTM(v59, &transform);
                  CGContextSetAlpha(v59, *(v20 + 184));
                  v68 = *(v20 + 192);
                  if (v68)
                  {
                    CGContextSetFillColorWithColor(v59, v68);
                  }

                  v107.origin.x = 0.0;
                  v107.origin.y = 0.0;
                  v107.size.width = 1.0;
                  v107.size.height = 1.0;
                  CGContextDrawImage(v59, v107, Image);
                  CFRelease(Image);
                  Image = CGBitmapContextCreateImage(v59);
                  CFRelease(v59);
                }

                CGColorSpaceRelease(v57);
              }

              goto LABEL_91;
            }
          }
        }
      }
    }
  }

  return result;
}

- (id)html
{
  if (!self->htmlString)
  {
    self->htmlString = objc_alloc_init(MEMORY[0x1E696AD60]);
    alloc = *MEMORY[0x1E695E480];
    self->imageNodes = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    Count = CFArrayGetCount(self->selections);
    v4 = Count;
    if (Count)
    {
      v5 = 0;
      v45 = Count;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->selections, v5);
        v7 = ValueAtIndex;
        htmlString = self->htmlString;
        imageNodes = self->imageNodes;
        if (ValueAtIndex && (v10 = ValueAtIndex[21]) != 0)
        {
          v11 = CGPDFPageCopyLayout(v10);
          v12 = CFAutorelease(v11);
          if (!v5)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v12 = 0;
          if (!v5)
          {
LABEL_9:
            value[0] = 0;
            if (v12 && ((v13 = *(v12 + 2)) == 0 ? (v14 = 0) : (v14 = *(v13 + 16)), Info = CGPDFDocumentGetInfo(v14), CGPDFDictionaryGetString(Info, "Title", value)))
            {
              Mutable = CGPDFStringCopyTextString(value[0]);
            }

            else
            {
              Mutable = CFStringCreateMutable(alloc, 0);
            }

            v17 = Mutable;
            v47[0] = 0;
            CFStringAppend(htmlString, @"<!DOCTYPE html PUBLIC -//W3C//DTD XHTML 1.0 Strict//EN http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd>");
            startIndent(htmlString, v47);
            startTagWithAttributes(htmlString, @"html", 0, v18, v19, v20, v21, v22, @"xmlns", @"http://www.w3.org/1999/xhtml");
            startIndent(htmlString, v47);
            startTag(htmlString, @"head", 0);
            startIndent(htmlString, v47);
            startTagWithAttributes(htmlString, @"meta", 1, v23, v24, v25, v26, v27, @"http-equiv", @"Content-Type");
            --v47[0];
            startIndent(htmlString, v47);
            startTag(htmlString, @"title", 0);
            if (v17)
            {
              v28 = CGPDFCopyStringEscapingElementMarkup(v17);
              if (v28)
              {
                v29 = v28;
                CFStringAppend(htmlString, v28);
                CFRelease(v29);
              }

              CFStringAppendFormat(htmlString, 0, @"</%@>", @"title");
              --v47[0];
              endIndent(htmlString, v47);
              CFStringAppendFormat(htmlString, 0, @"</%@>", @"head");
              startIndent(htmlString, v47);
              startTag(htmlString, @"body", 0);
              CFRelease(v17);
            }

            else
            {
              CFStringAppendFormat(htmlString, 0, @"</%@>", @"title");
              --v47[0];
              endIndent(htmlString, v47);
              CFStringAppendFormat(htmlString, 0, @"</%@>", @"head");
              startIndent(htmlString, v47);
              startTag(htmlString, @"body", 0);
            }

            v4 = v45;
          }
        }

        ++v5;
        if (v12)
        {
          v30 = *(v12 + 13);
          for (i = CGPDFSelectionGetContainingNode(v7); i; i = *(i + 1))
          {
            if (*i == 1538)
            {
              break;
            }
          }

          if (v7)
          {
            v32 = *(v7 + 24);
            if (v32)
            {
              if (*(v32 + 40))
              {
                CPIndexSetNormalize(v32);
              }

              if (*(v32 + 16) >= 1)
              {
                if (!i)
                {
                  i = v30;
                }

                Range = CPIndexSetGetRange(v32, 0);
                value[0] = v12;
                value[1] = v32;
                value[2] = 0;
                value[3] = Range;
                value[5] = 0;
                value[6] = 0;
                value[4] = v34;
                value[7] = htmlString;
                value[8] = 2;
                value[9] = i;
                value[10] = imageNodes;
                if (v30)
                {
                  v35 = *v30;
                }

                else
                {
                  v35 = 0;
                }

                v36 = 1;
                while (kCGPDFNodeTypeOrder[v36] != v35)
                {
                  if (++v36 == 12)
                  {
                    v37 = 0;
                    goto LABEL_43;
                  }
                }

                v37 = v36;
LABEL_43:
                (*(&htmlFuncArray + v37))(0, v30, value);
                goto LABEL_44;
              }
            }
          }

          if (v5 == v4)
          {
            break;
          }
        }

        else
        {
LABEL_44:
          if (v5 == v4)
          {
            LODWORD(value[0]) = 2;
            endIndent(htmlString, value);
            CFStringAppendFormat(htmlString, 0, @"</%@>", @"body");
            endIndent(htmlString, value);
            CFStringAppendFormat(htmlString, 0, @"</%@>", @"html");
            break;
          }
        }
      }
    }

    self->htmlStringNoImages = objc_alloc_init(MEMORY[0x1E696AD60]);
    v38 = [(NSMutableString *)self->htmlString length];
    v39 = 0;
    do
    {
      v40 = [(NSMutableString *)self->htmlString rangeOfString:@"<img" options:2 range:v39, v38 - v39];
      if (v40 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v41 = v38;
      }

      else
      {
        v41 = v40;
      }

      [(NSMutableString *)self->htmlStringNoImages appendString:[(NSMutableString *)self->htmlString substringWithRange:v39, v41 - v39]];
      v42 = [(NSMutableString *)self->htmlString rangeOfString:@">" options:2 range:v41, v38 - v41];
      if (v42 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v39 = v38;
      }

      else
      {
        v39 = v42 + 1;
      }
    }

    while (v39 < v38);
  }

  return self->htmlStringNoImages;
}

- (id)plainText
{
  if (!self->plainText)
  {
    self->plainText = objc_alloc_init(MEMORY[0x1E696AD60]);
    Count = CFArrayGetCount(self->selections);
    v4 = Count;
    if (Count)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->selections, v5);
        String = CGPDFSelectionCreateString(ValueAtIndex);
        if (String)
        {
          v9 = String;
          Length = CFStringGetLength(String);
          v11 = Length;
          if (Length)
          {
            if (v6)
            {
              CFStringAppend(self->plainText, @"\n");
            }

            v12 = 0;
            do
            {
              CharacterAtIndex = CFStringGetCharacterAtIndex(v9, v12);
              chars = CharacterAtIndex;
              if (CharacterAtIndex != 65532)
              {
                CFStringAppendCharacters(self->plainText, &chars, 1);
              }

              ++v12;
            }

            while (v11 != v12);
            v6 = 1;
          }

          CFRelease(v9);
        }

        ++v5;
      }

      while (v5 != v4);
    }
  }

  return self->plainText;
}

- (void)addSelection:(CGPDFSelection *)a3
{
  if (a3)
  {
    CFArrayAppendValue(self->selections, a3);
    htmlString = self->htmlString;
    if (htmlString)
    {
      webArchiveData = self->webArchiveData;
      if (webArchiveData)
      {

        self->webArchiveData = 0;
        htmlString = self->htmlString;
      }

      self->htmlString = 0;
    }

    plainText = self->plainText;
    if (plainText)
    {

      self->plainText = 0;
    }
  }
}

- (void)dealloc
{
  [(CPArchive *)self dispose];

  v3.receiver = self;
  v3.super_class = CPArchive;
  [(CPArchive *)&v3 dealloc];
}

- (void)finalize
{
  [(CPArchive *)self dispose];
  v3.receiver = self;
  v3.super_class = CPArchive;
  [(CPArchive *)&v3 finalize];
}

- (void)dispose
{
  selections = self->selections;
  if (selections)
  {
    CFRelease(selections);
    self->selections = 0;
    imageNodes = self->imageNodes;
    if (imageNodes)
    {
      CFRelease(imageNodes);
      self->imageNodes = 0;
    }
  }
}

- (CPArchive)init
{
  v4.receiver = self;
  v4.super_class = CPArchive;
  v2 = [(CPArchive *)&v4 init];
  if (v2)
  {
    v2->selections = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  return v2;
}

@end