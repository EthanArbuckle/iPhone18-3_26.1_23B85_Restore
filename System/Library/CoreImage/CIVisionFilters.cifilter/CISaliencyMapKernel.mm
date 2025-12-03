@interface CISaliencyMapKernel
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
@end

@implementation CISaliencyMapKernel

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  v5 = [arguments objectForKeyedSubscript:{@"rect", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];

  [v5 CGRectValue];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v8 = [objc_msgSend(inputs objectAtIndexedSubscript:{0, arguments), "pixelBuffer"}];
  if (v8)
  {
    v9 = v8;
    v10 = objc_alloc_init(VNGenerateAttentionBasedSaliencyImageRequest);
    v11 = [[VNImageRequestHandler alloc] initWithCVPixelBuffer:v9 options:&__NSDictionary0__struct];
    v17 = v10;
    if ([v11 performRequests:+[NSArray arrayWithObjects:count:](NSArray error:{"arrayWithObjects:count:", &v17, 1), error}])
    {
      v12 = [objc_msgSend(objc_msgSend(v10 "results")];

      if (v12)
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1030;
        v16[3] = &unk_4220;
        v16[4] = output;
        sub_CE0(v12, v16);
        return 1;
      }

      if (error)
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

  if (!error)
  {
    return 0;
  }

  v14 = &off_4528;
LABEL_11:
  v15 = [NSError errorWithDomain:@"CISaliencyMapFilter" code:1 userInfo:v14];
  result = 0;
  *error = v15;
  return result;
}

@end