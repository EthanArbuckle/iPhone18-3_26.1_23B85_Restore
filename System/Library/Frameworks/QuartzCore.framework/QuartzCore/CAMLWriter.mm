@interface CAMLWriter
+ (id)writerWithData:(id)data;
- (CAMLWriter)initWithData:(id)data;
- (id)URLStringForResource:(id)resource;
- (void)_writeElementTree:(_CAMLWriterElement *)tree;
- (void)beginElement:(unsigned int)element;
- (void)beginPropertyElement:(id)element;
- (void)dealloc;
- (void)encodeObject:(id)object conditionally:(BOOL)conditionally;
- (void)endElement;
- (void)setBaseURL:(id)l;
- (void)setDelegate:(id)delegate;
- (void)setElementAttribute:(id)attribute forKey:(id)key;
- (void)setElementContent:(id)content;
@end

@implementation CAMLWriter

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  if (priv)
  {
    if (priv->var0)
    {
      CFRelease(priv->var0);
    }

    var4 = priv->var4;
    if (var4)
    {
      CFRelease(var4);
    }

    var5 = priv->var5;
    if (var5)
    {
      CFRelease(var5);
    }

    var6 = priv->var6;
    if (var6)
    {
      CFRelease(var6);
    }

    var1 = priv->var1;
    if (var1)
    {
      CFRelease(var1);
    }

    var3 = priv->var3;
    if (var3)
    {
      CAMLWriterFreeElementList(var3);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    malloc_zone_free(malloc_zone, priv);
  }

  v9.receiver = self;
  v9.super_class = CAMLWriter;
  [(CAMLWriter *)&v9 dealloc];
}

- (void)_writeElementTree:(_CAMLWriterElement *)tree
{
  CAMLWriterNewline(self->_priv->var0, self->_priv->var7);
  if (tree->var1)
  {
    v5 = 0;
  }

  else
  {
    v5 = tree->var8 == 0;
  }

  priv = self->_priv;
  if (tree->var6)
  {
    CAMLWriterPrintf(priv, "<%S", tree->var5);
    var6 = tree->var6;
    if (var6)
    {
      if (v5)
      {
        v8 = "/>";
      }

      else
      {
        v8 = ">";
      }

      do
      {
        v9 = self->_priv;
        String = CAAtomGetString(*(var6 + 2));
        if (*var6)
        {
          v11 = "";
        }

        else
        {
          v11 = v8;
        }

        CAMLWriterPrintf(v9, " %S=%S%s", String, *(var6 + 2), v11);
        var6 = *var6;
      }

      while (var6);
    }
  }

  else
  {
    v12 = ">";
    if (v5)
    {
      v12 = "/>";
    }

    CAMLWriterPrintf(priv, "<%S%s", tree->var5, v12);
  }

  var1 = tree->var1;
  if (var1)
  {
    ++self->_priv->var7;
    do
    {
      [(CAMLWriter *)self _writeElementTree:var1];
      var1 = var1->var2;
    }

    while (var1);
    --self->_priv->var7;
  }

  else if (tree->var8)
  {
    CAMLWriterPrintf(self->_priv, "%S", tree->var8);
  }

  if (!v5)
  {
    v14 = self->_priv;
    if (!tree->var8)
    {
      CAMLWriterNewline(v14->var0, v14->var7);
      v14 = self->_priv;
    }

    CAMLWriterPrintf(v14, "</%S>", tree->var5);
  }
}

- (void)endElement
{
  v34 = *MEMORY[0x1E69E9840];
  var3 = self->_priv->var3;
  var0 = var3->var0;
  result.location = 0;
  result.length = 0;
  if (var3->var9 == 2)
  {
    var8 = var3->var8;
    if (var8)
    {
      if (![CAMLWriter endElement]::newline_set)
      {
        v35.location = 10;
        v35.length = 1;
        [CAMLWriter endElement]::newline_set = CFCharacterSetCreateWithCharactersInRange(0, v35);
        var8 = var3->var8;
      }

      v36.length = CFStringGetLength(var8);
      result.location = 0;
      result.length = v36.length;
      v36.location = 0;
      if (!CFStringFindCharacterFromSet(var3->var8, [CAMLWriter endElement]::newline_set, v36, 0, &result))
      {
        [(CAMLWriter *)self setElementAttribute:var3->var8 forKey:@"value"];
        CFRelease(var3->var8);
        var3->var8 = 0;
      }
    }
  }

  self->_priv->var3 = var0;
  if (var0)
  {
    if ((var0->var9 & 4) != 0)
    {
      v6 = var0->var0;
      if (var0->var0)
      {
        var4 = v6->var4;
        if (var4)
        {
          if ((v6->var9 & 2) != 0)
          {
            p_var6 = &var0->var6;
            while (1)
            {
              p_var6 = *p_var6;
              if (!p_var6)
              {
                break;
              }

              if (*(p_var6 + 2) == 454)
              {
                if (p_var6[2])
                {
                  v22 = &var3->var6;
                  while (1)
                  {
                    v22 = *v22;
                    if (!v22)
                    {
                      break;
                    }

                    if (*(v22 + 2) == 725)
                    {
                      v23 = v22[2];
                      if (v23)
                      {
                        v24 = [var4 CAMLTypeForKey:?];
                        if (v24)
                        {
                          if (CAMLWriterTypesEqual(v23, v24))
                          {
                            CAMLWriterElementRemoveAttribute(var3, 725);
                          }
                        }
                      }

                      goto LABEL_12;
                    }
                  }
                }

                break;
              }
            }
          }
        }
      }
    }

LABEL_12:
    var9 = var3->var9;
    if (var9 == 2)
    {
      if (var0->var9 == 4)
      {
        var0->var9 = 6;
        var0->var8 = var3->var8;
        var3->var8 = 0;
        var1 = var3->var1;
        if (var1)
        {
          v10 = var3->var1;
          do
          {
            v10->var0 = var0;
            v10 = v10->var2;
          }

          while (v10);
        }

        *var0->var3 = var1;
        var0->var3 = var3->var3;
        var3->var1 = 0;
        var3->var3 = &var3->var1;
        *var0->var7 = var3->var6;
        var0->var7 = var3->var7;
        var3->var6 = 0;
        var3->var7 = &var3->var6;
        goto LABEL_51;
      }

      goto LABEL_26;
    }
  }

  else
  {
    var9 = var3->var9;
  }

  if (var9 == 6)
  {
    if (var0)
    {
      if (!var3->var1 && var0->var9 == 2)
      {
        var6 = var3->var6;
        if (var6)
        {
          v12 = *var6;
          if (*var6)
          {
            if (!*v12)
            {
              v25 = *(var6 + 2);
              if (v25 == 732)
              {
                v27 = *(v12 + 2);
                v26 = *var6;
                v12 = var3->var6;
                if (v27 != 454)
                {
                  goto LABEL_26;
                }
              }

              else
              {
                if (v25 != 454)
                {
                  goto LABEL_26;
                }

                v26 = var3->var6;
                if (*(v12 + 2) != 732)
                {
                  goto LABEL_26;
                }
              }

              v28 = *(v26 + 2);
              v29 = *(v12 + 2);
              if (!CAMLWriterIdentifierNeedsQuoting(v28))
              {
                v30 = CAMLWriterReservedAttr(__CFString const*)::reserved_attrs;
                if (!CAMLWriterReservedAttr(__CFString const*)::reserved_attrs)
                {
                  *values = xmmword_1E6DF9E80;
                  v33 = *off_1E6DF9E90;
                  v30 = CFSetCreate(0, values, 4, MEMORY[0x1E695E9F8]);
                  CAMLWriterReservedAttr(__CFString const*)::reserved_attrs = v30;
                }

                if (!CFSetContainsValue(v30, v28))
                {
                  [(CAMLWriter *)self setElementAttribute:v29 forKey:v28];
                  goto LABEL_51;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_26:
  if (var3->var5)
  {
    goto LABEL_38;
  }

  v13 = var3->var9;
  if ((v13 & 6) != 0)
  {
    if ((v13 & 4) != 0)
    {
      v14 = 454;
    }

    else
    {
      v14 = 725;
    }

    v15 = &var3->var6;
    while (1)
    {
      v15 = *v15;
      if (!v15)
      {
        break;
      }

      if (*(v15 + 2) == v14)
      {
        v16 = v15[2];
        if (v16 && !CAMLWriterIdentifierNeedsQuoting(v15[2]))
        {
          var3->var5 = CFRetain(v16);
          CAMLWriterElementRemoveAttribute(var3, v14);
        }

        break;
      }
    }
  }

  if (var3->var5)
  {
LABEL_38:
    if (var0)
    {
LABEL_39:
      *var0->var3 = var3;
      var0->var3 = &var3->var2;
      return;
    }
  }

  else
  {
    v17 = var3->var9;
    v18 = @"o";
    v19 = @"unknown";
    if (v17 == 8)
    {
      v19 = @"script";
    }

    if (v17 != 2)
    {
      v18 = v19;
    }

    if (v17 == 1)
    {
      v18 = @"caml";
    }

    if ((v17 & 4) != 0)
    {
      v20 = @"p";
    }

    else
    {
      v20 = v18;
    }

    var3->var5 = v20;
    CFRetain(v20);
    if (var0)
    {
      goto LABEL_39;
    }
  }

  CAMLWriterPrintf(self->_priv, "%s", "<?xml version=1.0 encoding=UTF-8?>\n");
  [(CAMLWriter *)self _writeElementTree:var3];
  CAMLWriterNewline(self->_priv->var0, self->_priv->var7);
LABEL_51:
  CAMLWriterFreeElementList(var3);
}

- (id)URLStringForResource:(id)resource
{
  if (!resource)
  {
    return 0;
  }

  priv = self->_priv;
  if ((*(priv + 60) & 4) == 0)
  {
    return 0;
  }

  v4 = [priv->var2 CAMLWriter:self URLForResource:resource];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  var1 = priv->var1;
  if (!var1)
  {
    goto LABEL_17;
  }

  if ([v4 baseURL] && objc_msgSend(objc_msgSend(v5, "baseURL"), "isEqual:", var1))
  {

    return [v5 relativePath];
  }

  if ([v5 isFileURL] && (-[__CFURL isFileURL](var1, "isFileURL") & 1) != 0 && (v8 = objc_msgSend(objc_msgSend(v5, "path"), "pathComponents"), v9 = objc_msgSend(v8, "count"), v10 = objc_msgSend(-[__CFURL path](var1, "path"), "pathComponents"), v11 = objc_msgSend(v10, "count"), v12 = v11, v9 > v11))
  {
    v13 = v11;
    while (v13 >= 1)
    {
      --v13;
      if (([objc_msgSend(v8 objectAtIndex:{v13), "isEqualToString:", objc_msgSend(v10, "objectAtIndex:", v13)}] & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v14 = [v8 subarrayWithRange:{v12, v9 - v12}];
    v15 = [MEMORY[0x1E696AEC0] pathWithComponents:v14];
    uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];

    return [v15 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
  }

  else
  {
LABEL_17:

    return [v5 absoluteString];
  }
}

- (void)setElementContent:(id)content
{
  var3 = self->_priv->var3;
  var8 = var3->var8;
  if (var8 != content)
  {
    if (var8)
    {
      CFRelease(var8);
    }

    Copy = 0;
    if (content)
    {
      Copy = CFStringCreateCopy(0, content);
    }

    var3->var8 = Copy;
  }
}

- (void)setElementAttribute:(id)attribute forKey:(id)key
{
  var3 = self->_priv->var3;
  v6 = CAInternAtom(key, 1);
  v7 = v6;
  p_var6 = &var3->var6;
  do
  {
    p_var6 = *p_var6;
    if (!p_var6)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      p_var6 = malloc_type_zone_malloc(malloc_zone, 0x18uLL, 0x1060040EA08756EuLL);
      *var3->var7 = p_var6;
      var3->var7 = p_var6;
      *p_var6 = 0;
      *(p_var6 + 2) = v7;
      goto LABEL_9;
    }
  }

  while (*(p_var6 + 2) != v6);
  v9 = *(p_var6 + 2);
  if (v9 == attribute)
  {
    return;
  }

  CFRelease(v9);
  *(p_var6 + 2) = 0;
LABEL_9:
  *(p_var6 + 2) = CFStringCreateCopy(0, attribute);
}

- (void)beginPropertyElement:(id)element
{
  [(CAMLWriter *)self beginElement:2];

  [(CAMLWriter *)self setElementAttribute:element forKey:@"key"];
}

- (void)beginElement:(unsigned int)element
{
  priv = self->_priv;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_type_zone_malloc(malloc_zone, 0x50uLL, 0x10E004091D4B9C3uLL);
  if (v6)
  {
    v6->var0 = priv->var3;
    priv->var3 = v6;
    v6->var1 = 0;
    v6->var2 = 0;
    v6->var3 = &v6->var1;
    v6->var4 = 0;
    v6->var5 = 0;
    v6->var6 = 0;
    v6->var7 = &v6->var6;
    v6->var8 = 0;
    v6->var9 = 1 << element;
    if (priv->var4)
    {
      if (element == 1)
      {
        [CAMLWriter setElementAttribute:"setElementAttribute:forKey:" forKey:?];
      }

      priv->var4 = 0;
    }
  }
}

- (void)encodeObject:(id)object conditionally:(BOOL)conditionally
{
  priv = self->_priv;
  if (priv->var3)
  {
    v8 = *(priv + 60);
    if ((v8 & 8) != 0)
    {
      if (![priv->var2 CAMLWriter:self shouldEncodeObject:object])
      {
        return;
      }

      v8 = *(priv + 60);
    }

    if (object && (v8 & 2) != 0 && (v9 = [priv->var2 CAMLWriter:self IDForObject:object]) != 0 && (Copy = CFStringCreateCopy(0, v9)) != 0)
    {
      v11 = Copy;
      var5 = priv->var5;
      if (var5 && CFSetContainsValue(var5, v11))
      {
        if ((*(priv + 60) & 1) == 0 || (cAMLType = [priv->var2 CAMLWriter:self typeForObject:object]) == 0)
        {
          cAMLType = [object CAMLType];
        }

        [(CAMLWriter *)self beginElement:1];
        [(CAMLWriter *)self setElementAttribute:cAMLType forKey:@"type"];
        [(CAMLWriter *)self setElementAttribute:v11 forKey:@"object"];
        [(CAMLWriter *)self endElement];
        goto LABEL_34;
      }

      if (conditionally)
      {
LABEL_34:

        CFRelease(v11);
        return;
      }

      priv->var4 = v11;
      Mutable = priv->var5;
      if (!Mutable)
      {
        Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
        priv->var5 = Mutable;
      }

      CFSetAddValue(Mutable, v11);
      v14 = 0;
    }

    else
    {
      if (conditionally)
      {
        return;
      }

      v11 = 0;
      priv->var4 = 0;
      v14 = 1;
    }

    var6 = priv->var6;
    if (!var6)
    {
      var6 = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
      priv->var6 = var6;
    }

    if (!object || CFSetContainsValue(var6, object))
    {
      if (v14)
      {
        return;
      }

      goto LABEL_34;
    }

    CFSetAddValue(priv->var6, object);
    if ((*(priv + 60) & 1) == 0 || (cAMLType2 = [priv->var2 CAMLWriter:self typeForObject:object]) == 0)
    {
      cAMLType2 = [object CAMLType];
    }

    [(CAMLWriter *)self beginElement:1];
    priv->var3->var4 = CFRetain(object);
    [(CAMLWriter *)self setElementAttribute:cAMLType2 forKey:@"type"];
    [object encodeWithCAMLWriter:self];
    [(CAMLWriter *)self endElement];
    CFSetRemoveValue(priv->var6, object);
    if ((v14 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    [(CAMLWriter *)self beginElement:0, conditionally];
    [(CAMLWriter *)self setElementAttribute:@"http://www.apple.com/CoreAnimation/1.0" forKey:@"xmlns"];
    [(CAMLWriter *)self encodeObject:object];

    [(CAMLWriter *)self endElement];
  }
}

- (void)setDelegate:(id)delegate
{
  priv = self->_priv;
  if (priv->var2 != delegate)
  {
    priv->var2 = delegate;
    *(self->_priv + 60) = *(self->_priv + 60) & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(self->_priv + 60) = *(self->_priv + 60) & 0xFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *(self->_priv + 60) = *(self->_priv + 60) & 0xFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *(self->_priv + 60) = *(self->_priv + 60) & 0xF7 | v7;
  }
}

- (void)setBaseURL:(id)l
{
  priv = self->_priv;
  var1 = priv->var1;
  if (var1 != l)
  {
    if (var1)
    {
      CFRelease(var1);
    }

    priv->var1 = l;
    if (l)
    {

      CFRetain(l);
    }
  }
}

- (CAMLWriter)initWithData:(id)data
{
  v8 = *MEMORY[0x1E69E9840];
  if (!data)
  {

    return 0;
  }

  v7.receiver = self;
  v7.super_class = CAMLWriter;
  v4 = [(CAMLWriter *)&v7 init];
  if (v4)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v5 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x40uLL, 0x10E00402FA2BA54uLL);
    v4->_priv = v5;
    if (v5)
    {
      v4->_priv->var0 = CFRetain(data);
      return v4;
    }

    return 0;
  }

  return v4;
}

+ (id)writerWithData:(id)data
{
  v3 = [[self alloc] initWithData:data];

  return v3;
}

@end