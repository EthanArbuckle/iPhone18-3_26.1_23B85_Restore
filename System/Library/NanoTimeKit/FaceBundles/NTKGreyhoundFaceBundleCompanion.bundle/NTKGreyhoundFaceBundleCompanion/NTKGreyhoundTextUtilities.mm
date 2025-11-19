@interface NTKGreyhoundTextUtilities
+ (id)fontForDevice:(id)a3 style:(unint64_t)a4 density:(unint64_t)a5 typeface:(unint64_t)a6;
+ (id)textForHour:(unint64_t)a3 density:(unint64_t)a4 style:(unint64_t)a5 typeface:(unint64_t)a6;
@end

@implementation NTKGreyhoundTextUtilities

+ (id)textForHour:(unint64_t)a3 density:(unint64_t)a4 style:(unint64_t)a5 typeface:(unint64_t)a6
{
  if (qword_19400 != -1)
  {
    sub_C780();
  }

  if (a5 == 1)
  {
    v14 = [qword_193F8 objectAtIndexedSubscript:1];
    v13 = [v14 objectAtIndexedSubscript:a6 == 2];
  }

  else if (a5)
  {
    v13 = [qword_193F8 objectAtIndexedSubscript:a5];
  }

  else
  {
    v10 = [qword_193F8 objectAtIndexedSubscript:0];
    v11 = v10;
    if (a6 == 1)
    {
      v12 = [v10 objectAtIndexedSubscript:1];
      v13 = [v12 objectAtIndexedSubscript:a4];
    }

    else
    {
      v13 = [v10 objectAtIndexedSubscript:a6];
    }
  }

  v15 = [v13 objectAtIndexedSubscript:a3 - 1];

  return v15;
}

+ (id)fontForDevice:(id)a3 style:(unint64_t)a4 density:(unint64_t)a5 typeface:(unint64_t)a6
{
  __chkstk_darwin(a1, a2, a3, a4, a5, a6);
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