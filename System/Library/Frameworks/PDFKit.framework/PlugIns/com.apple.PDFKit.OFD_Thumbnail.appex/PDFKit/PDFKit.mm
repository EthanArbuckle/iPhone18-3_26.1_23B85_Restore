void sub_100000DA4(id a1)
{
  strcpy(v2, "/System/Library/Frameworks/ImageIO.framework/ImageIO");
  v1 = dlopen(v2, 257);
  if (v1)
  {
    gFunc_OFDCreatePDFDataFromURL = dlsym(v1, "OFDCreatePDFDataFromURL");
  }
}

uint64_t sub_100000E30(uint64_t a1, CGContextRef c)
{
  CGContextSaveGState(c);
  v4 = *(a1 + 40);
  [*(a1 + 32) scale];
  v6 = v4 * v5;
  v7 = *(a1 + 40);
  [*(a1 + 32) scale];
  CGContextScaleCTM(c, v6, v7 * v8);
  CGContextDrawPDFPage(c, *(a1 + 48));
  CFAutorelease(*(a1 + 48));
  CGContextRestoreGState(c);
  return 1;
}