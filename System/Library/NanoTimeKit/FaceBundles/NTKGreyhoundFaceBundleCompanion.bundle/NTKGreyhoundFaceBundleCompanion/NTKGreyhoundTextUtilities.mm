@interface NTKGreyhoundTextUtilities
+ (id)fontForDevice:(id)device style:(unint64_t)style density:(unint64_t)density typeface:(unint64_t)typeface;
+ (id)textForHour:(unint64_t)hour density:(unint64_t)density style:(unint64_t)style typeface:(unint64_t)typeface;
@end

@implementation NTKGreyhoundTextUtilities

+ (id)textForHour:(unint64_t)hour density:(unint64_t)density style:(unint64_t)style typeface:(unint64_t)typeface
{
  if (qword_19400 != -1)
  {
    sub_C780();
  }

  if (style == 1)
  {
    v14 = [qword_193F8 objectAtIndexedSubscript:1];
    v13 = [v14 objectAtIndexedSubscript:typeface == 2];
  }

  else if (style)
  {
    v13 = [qword_193F8 objectAtIndexedSubscript:style];
  }

  else
  {
    v10 = [qword_193F8 objectAtIndexedSubscript:0];
    v11 = v10;
    if (typeface == 1)
    {
      v12 = [v10 objectAtIndexedSubscript:1];
      v13 = [v12 objectAtIndexedSubscript:density];
    }

    else
    {
      v13 = [v10 objectAtIndexedSubscript:typeface];
    }
  }

  v15 = [v13 objectAtIndexedSubscript:hour - 1];

  return v15;
}

+ (id)fontForDevice:(id)device style:(unint64_t)style density:(unint64_t)density typeface:(unint64_t)typeface
{
  __chkstk_darwin(self, a2, device, style, density, typeface);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = qword_19410;
  v14 = v13;
  if (v12 != -1)
  {
    sub_C794();
  }

  v15 = [qword_19408 objectAtIndexedSubscript:v7];
  v16 = [v15 objectAtIndexedSubscript:v9];

  sub_1794(v17, v14);
  memcpy(__dst, qword_19418, 0x10E0uLL);
  __dst[540] = qword_1A4F8;
  v18 = [CLKFont fontWithDescriptor:v16 size:*&__dst[15 * v9 + 510 + 5 * v7 + v11]];

  return v18;
}

@end