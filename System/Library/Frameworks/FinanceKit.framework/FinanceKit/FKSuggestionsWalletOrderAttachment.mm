@interface FKSuggestionsWalletOrderAttachment
+ (id)readContentsOfOrderAtURL:(id)l error:(id *)error;
- (FKSuggestionsWalletOrderAttachment)initWithURL:(id)l data:(id)data fqoid:(id)fqoid state:(unint64_t)state;
@end

@implementation FKSuggestionsWalletOrderAttachment

- (FKSuggestionsWalletOrderAttachment)initWithURL:(id)l data:(id)data fqoid:(id)fqoid state:(unint64_t)state
{
  lCopy = l;
  dataCopy = data;
  fqoidCopy = fqoid;
  v21.receiver = self;
  v21.super_class = FKSuggestionsWalletOrderAttachment;
  v13 = [(FKSuggestionsWalletOrderAttachment *)&v21 init];
  if (v13)
  {
    v14 = [lCopy copy];
    url = v13->_url;
    v13->_url = v14;

    v16 = [dataCopy copy];
    data = v13->_data;
    v13->_data = v16;

    v18 = [fqoidCopy copy];
    fullyQualifiedOrderIdentifier = v13->_fullyQualifiedOrderIdentifier;
    v13->_fullyQualifiedOrderIdentifier = v18;

    v13->_orderState = state;
  }

  return v13;
}

+ (id)readContentsOfOrderAtURL:(id)l error:(id *)error
{
  v4 = [_TtC10FinanceKit32SuggestionsWalletOrderAttachment readContentsOfOrderAt:l error:error];
  v5 = [FKSuggestionsWalletOrderAttachment alloc];
  v6 = [v4 url];
  data = [v4 data];
  fqoid = [v4 fqoid];
  state = [v4 state];
  if (state > 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_1B7807C70[state];
  }

  v11 = [(FKSuggestionsWalletOrderAttachment *)v5 initWithURL:v6 data:data fqoid:fqoid state:v10];

  return v11;
}

@end