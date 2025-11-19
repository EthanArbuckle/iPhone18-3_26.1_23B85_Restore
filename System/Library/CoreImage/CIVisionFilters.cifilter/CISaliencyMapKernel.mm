@interface CISaliencyMapKernel
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
@end

@implementation CISaliencyMapKernel

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  v5 = [a4 objectForKeyedSubscript:{@"rect", a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];

  [v5 CGRectValue];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v8 = [objc_msgSend(a3 objectAtIndexedSubscript:{0, a4), "pixelBuffer"}];
  if (v8)
  {
    v9 = v8;
    v10 = objc_alloc_init(VNGenerateAttentionBasedSaliencyImageRequest);
    v11 = [[VNImageRequestHandler alloc] initWithCVPixelBuffer:v9 options:&__NSDictionary0__struct];
    v17 = v10;
    if ([v11 performRequests:+[NSArray arrayWithObjects:count:](NSArray error:{"arrayWithObjects:count:", &v17, 1), a6}])
    {
      v12 = [objc_msgSend(objc_msgSend(v10 "results")];

      if (v12)
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1030;
        v16[3] = &unk_4220;
        v16[4] = a5;
        sub_CE0(v12, v16);
        return 1;
      }

      if (a6)
      {
        v14 = &off_4550;
        goto LABEL_11;
      }
    }

    else
    {
    }

    return 0;
  }

  if (!a6)
  {
    return 0;
  }

  v14 = &off_4528;
LABEL_11:
  v15 = [NSError errorWithDomain:@"CISaliencyMapFilter" code:1 userInfo:v14];
  result = 0;
  *a6 = v15;
  return result;
}

@end