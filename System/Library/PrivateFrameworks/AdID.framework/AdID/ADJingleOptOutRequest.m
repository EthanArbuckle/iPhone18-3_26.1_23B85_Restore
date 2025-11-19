@interface ADJingleOptOutRequest
- (id)init:(id)a3 state:(BOOL)a4 timestamp:(double)a5 completionHandler:(id)a6;
@end

@implementation ADJingleOptOutRequest

- (id)init:(id)a3 state:(BOOL)a4 timestamp:(double)a5 completionHandler:(id)a6
{
  v7 = a4;
  v20[2] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = ADJingleOptOutRequest;
  v8 = [(ADJingleRequest *)&v18 init:a3 withCompletion:a6];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x277CE9708];
    if (!v7)
    {
      v10 = MEMORY[0x277CE9700];
    }

    [v8 setBagKey:*v10];
    v19[0] = @"dsid";
    v11 = [v9 DSID];
    v19[1] = @"oo-timestamp";
    v20[0] = v11;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    v20[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

    v14 = [v13 AD_jsonString];
    v15 = [v14 dataUsingEncoding:4];
    [v9 setRequestBody:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

@end