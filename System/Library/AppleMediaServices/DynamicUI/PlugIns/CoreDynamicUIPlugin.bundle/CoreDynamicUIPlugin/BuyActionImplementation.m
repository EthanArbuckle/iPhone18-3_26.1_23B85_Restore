@interface BuyActionImplementation
- (id)purchase:(id)a3 handleSceneIdentifierRequest:(id)a4 error:(id *)a5;
- (id)purchase:(id)a3 handleWindowRequest:(id)a4 error:(id *)a5;
- (void)purchase:(id)a3 willProcessResponse:(id)a4;
@end

@implementation BuyActionImplementation

- (void)purchase:(id)a3 willProcessResponse:(id)a4
{
  v6 = sub_8F564();
  v7 = a3;
  v8 = self;
  sub_1C7FC(v8, v6);
}

- (id)purchase:(id)a3 handleSceneIdentifierRequest:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1E9AC();

  v10 = sub_8F5C4();

  return v10;
}

- (id)purchase:(id)a3 handleWindowRequest:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_1EC44();

  return v10;
}

@end