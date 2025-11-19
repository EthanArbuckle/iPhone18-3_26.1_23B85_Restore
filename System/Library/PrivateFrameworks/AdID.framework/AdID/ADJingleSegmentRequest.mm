@interface ADJingleSegmentRequest
- (id)init:(id)a3 forceSegments:(BOOL)a4 withCompletion:(id)a5;
@end

@implementation ADJingleSegmentRequest

- (id)init:(id)a3 forceSegments:(BOOL)a4 withCompletion:(id)a5
{
  v21[3] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = ADJingleSegmentRequest;
  v6 = [(ADJingleRequest *)&v17 init:a3 withCompletion:a5];
  v7 = v6;
  if (v6)
  {
    [v6 setBagKey:*MEMORY[0x277CE9710]];
    if (a4)
    {
      v20[0] = @"dsid";
      v8 = [v7 DSID];
      v21[0] = v8;
      v21[1] = @"1";
      v20[1] = @"ioflag";
      v20[2] = @"gflag";
      v21[2] = @"1";
      v9 = MEMORY[0x277CBEAC0];
      v10 = v21;
      v11 = v20;
    }

    else
    {
      v18[0] = @"dsid";
      v8 = [v7 DSID];
      v19[0] = v8;
      v19[1] = @"0";
      v18[1] = @"ioflag";
      v18[2] = @"gflag";
      v19[2] = @"1";
      v9 = MEMORY[0x277CBEAC0];
      v10 = v19;
      v11 = v18;
    }

    v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:3];

    v13 = [v12 AD_jsonString];
    v14 = [v13 dataUsingEncoding:4];
    [v7 setRequestBody:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

@end