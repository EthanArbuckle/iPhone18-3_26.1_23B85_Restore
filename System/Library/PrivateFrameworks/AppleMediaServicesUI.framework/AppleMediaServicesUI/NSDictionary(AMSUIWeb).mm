@interface NSDictionary(AMSUIWeb)
- (id)ams_JSONStringWithError:()AMSUIWeb;
@end

@implementation NSDictionary(AMSUIWeb)

- (id)ams_JSONStringWithError:()AMSUIWeb
{
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:a1])
  {
    v12 = 0;
    v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a1 options:0 error:&v12];
    v6 = v12;
    if (v5)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
      if (v7)
      {
        v8 = v7;
        if (!v6)
        {
          goto LABEL_16;
        }

        goto LABEL_13;
      }

      v9 = AMSError();

      v6 = v9;
    }

    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v6 = AMSError();
      v8 = 0;
      if (!v6)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

LABEL_13:
    if (a3)
    {
      v10 = v6;
      *a3 = v6;
    }

    v8 = 0;
    goto LABEL_16;
  }

  if (a3)
  {
    AMSError();
    *a3 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_17:

  return v8;
}

@end