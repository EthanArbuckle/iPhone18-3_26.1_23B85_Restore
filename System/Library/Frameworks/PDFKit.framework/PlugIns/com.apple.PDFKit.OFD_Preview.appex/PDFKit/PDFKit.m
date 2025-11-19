void sub_100000DC4(id a1)
{
  strcpy(v2, "/System/Library/Frameworks/ImageIO.framework/ImageIO");
  v1 = dlopen(v2, 257);
  if (v1)
  {
    gFunc_OFDCreatePDFDataFromURL = dlsym(v1, "OFDCreatePDFDataFromURL");
  }
}