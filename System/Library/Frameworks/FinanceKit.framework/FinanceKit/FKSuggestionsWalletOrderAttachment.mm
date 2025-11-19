@interface FKSuggestionsWalletOrderAttachment
+ (id)readContentsOfOrderAtURL:(id)a3 error:(id *)a4;
- (FKSuggestionsWalletOrderAttachment)initWithURL:(id)a3 data:(id)a4 fqoid:(id)a5 state:(unint64_t)a6;
@end

@implementation FKSuggestionsWalletOrderAttachment

- (FKSuggestionsWalletOrderAttachment)initWithURL:(id)a3 data:(id)a4 fqoid:(id)a5 state:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = FKSuggestionsWalletOrderAttachment;
  v13 = [(FKSuggestionsWalletOrderAttachment *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    url = v13->_url;
    v13->_url = v14;

    v16 = [v11 copy];
    data = v13->_data;
    v13->_data = v16;

    v18 = [v12 copy];
    fullyQualifiedOrderIdentifier = v13->_fullyQualifiedOrderIdentifier;
    v13->_fullyQualifiedOrderIdentifier = v18;

    v13->_orderState = a6;
  }

  return v13;
}

+ (id)readContentsOfOrderAtURL:(id)a3 error:(id *)a4
{
  v4 = [_TtC10FinanceKit32SuggestionsWalletOrderAttachment readContentsOfOrderAt:a3 error:a4];
  v5 = [FKSuggestionsWalletOrderAttachment alloc];
  v6 = [v4 url];
  v7 = [v4 data];
  v8 = [v4 fqoid];
  v9 = [v4 state];
  if (v9 > 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_1B7807C70[v9];
  }

  v11 = [(FKSuggestionsWalletOrderAttachment *)v5 initWithURL:v6 data:v7 fqoid:v8 state:v10];

  return v11;
}

@end