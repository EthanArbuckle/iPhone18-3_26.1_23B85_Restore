@interface SKANToken
+ (id)defaultProperties;
- (SKANToken)initWithAppAdamId:(id)a3 blindedData:(id)a4;
- (id)dictionaryRepresentationForRequest;
- (void)setIsRedownload:(BOOL)a3;
@end

@implementation SKANToken

+ (id)defaultProperties
{
  v4[0] = @"app_adam_id";
  v4[1] = @"blinded_element";
  v4[2] = @"private_input";
  v4[3] = @"finalized_token";
  v4[4] = @"certificate";
  v4[5] = @"is_redownload";
  v4[6] = @"timestamp";
  v2 = [NSArray arrayWithObjects:v4 count:7];

  return v2;
}

- (SKANToken)initWithAppAdamId:(id)a3 blindedData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SKANToken;
  v8 = [(SQLiteMemoryEntity *)&v13 init];
  v9 = v8;
  if (v6 && v8)
  {
    sub_10023E000(v8, v6, @"app_adam_id");
    v10 = [v7 blindedElement];
    sub_10023E000(v9, v10, @"blinded_element");

    v11 = [v7 privateInput];
    sub_10023E000(v9, v11, @"private_input");
  }

  return v9;
}

- (id)dictionaryRepresentationForRequest
{
  v3 = objc_opt_new();
  v4 = [(SKANToken *)self appAdamId];
  [v3 setObject:v4 forKeyedSubscript:@"adam-id"];

  v5 = [(SKANToken *)self timestamp];
  [v3 setObject:v5 forKeyedSubscript:@"timestamp"];

  if (sub_10023E4DC(self, @"is_redownload"))
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  [v3 setObject:v6 forKeyedSubscript:@"is-redownload"];
  v7 = [(SKANToken *)self privateInput];
  [v3 setObject:v7 forKeyedSubscript:@"private-input"];

  v8 = [(SKANToken *)self finalizedToken];
  [v3 setObject:v8 forKeyedSubscript:@"prf-client"];

  v9 = [(SKANToken *)self certificate];
  [v3 setObject:v9 forKeyedSubscript:@"certificate"];

  return v3;
}

- (void)setIsRedownload:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_10023E000(self, v4, @"is_redownload");
}

@end