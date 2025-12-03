@interface SKANToken
+ (id)defaultProperties;
- (SKANToken)initWithAppAdamId:(id)id blindedData:(id)data;
- (id)dictionaryRepresentationForRequest;
- (void)setIsRedownload:(BOOL)redownload;
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

- (SKANToken)initWithAppAdamId:(id)id blindedData:(id)data
{
  idCopy = id;
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = SKANToken;
  v8 = [(SQLiteMemoryEntity *)&v13 init];
  v9 = v8;
  if (idCopy && v8)
  {
    sub_10023E000(v8, idCopy, @"app_adam_id");
    blindedElement = [dataCopy blindedElement];
    sub_10023E000(v9, blindedElement, @"blinded_element");

    privateInput = [dataCopy privateInput];
    sub_10023E000(v9, privateInput, @"private_input");
  }

  return v9;
}

- (id)dictionaryRepresentationForRequest
{
  v3 = objc_opt_new();
  appAdamId = [(SKANToken *)self appAdamId];
  [v3 setObject:appAdamId forKeyedSubscript:@"adam-id"];

  timestamp = [(SKANToken *)self timestamp];
  [v3 setObject:timestamp forKeyedSubscript:@"timestamp"];

  if (sub_10023E4DC(self, @"is_redownload"))
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  [v3 setObject:v6 forKeyedSubscript:@"is-redownload"];
  privateInput = [(SKANToken *)self privateInput];
  [v3 setObject:privateInput forKeyedSubscript:@"private-input"];

  finalizedToken = [(SKANToken *)self finalizedToken];
  [v3 setObject:finalizedToken forKeyedSubscript:@"prf-client"];

  certificate = [(SKANToken *)self certificate];
  [v3 setObject:certificate forKeyedSubscript:@"certificate"];

  return v3;
}

- (void)setIsRedownload:(BOOL)redownload
{
  v4 = [NSNumber numberWithBool:redownload];
  sub_10023E000(self, v4, @"is_redownload");
}

@end