@interface EKStructuredLocationSemanticIdentifierGenerator
+ (id)semanticIdentifierForLocationWithTitle:(id)a3 address:(id)a4 mapKitHandle:(id)a5 contactLabel:(id)a6 latitude:(id)a7 longitude:(id)a8 radius:(id)a9;
@end

@implementation EKStructuredLocationSemanticIdentifierGenerator

+ (id)semanticIdentifierForLocationWithTitle:(id)a3 address:(id)a4 mapKitHandle:(id)a5 contactLabel:(id)a6 latitude:(id)a7 longitude:(id)a8 radius:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (!(v14 | v15))
  {
    if (v16)
    {
      v24 = [v16 base64EncodedStringWithOptions:0];
    }

    else if (v17)
    {
      v24 = v17;
    }

    else
    {
      v23 = 0;
      if (!v18 || !v19)
      {
        goto LABEL_18;
      }

      v25 = MEMORY[0x1E696AEC0];
      [v18 floatValue];
      v27 = v26;
      [v19 floatValue];
      v29 = v28;
      if (v20)
      {
        [v20 floatValue];
        [v25 stringWithFormat:@"%f:%f:%f", *&v27, *&v29, v30];
      }

      else
      {
        [v25 stringWithFormat:@"%f:%f", *&v27, v28, v32];
      }
      v24 = ;
    }

    v23 = v24;
    goto LABEL_18;
  }

  v21 = [MEMORY[0x1E696AD60] string];
  v22 = v21;
  if (v14)
  {
    [v21 appendFormat:@"TITLE=%@;", v14];
  }

  if (v15)
  {
    [v22 appendFormat:@"ADDRESS=%@;", v15];
  }

  v23 = [v22 copy];

LABEL_18:

  return v23;
}

@end