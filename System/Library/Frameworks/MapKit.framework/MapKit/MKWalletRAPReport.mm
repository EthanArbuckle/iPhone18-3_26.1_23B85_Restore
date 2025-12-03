@interface MKWalletRAPReport
- (BOOL)isAppleCard;
- (NSString)correlationId;
- (NSString)merchantAdamId;
- (NSString)reportersComment;
- (id)initForMerchantIssue:(unint64_t)issue merchantIndustryCode:(int64_t)code mapsIdentifier:(unint64_t)identifier merchantName:(id)name merchantRawName:(id)rawName merchantIndustryCategory:(id)category merchantURL:(id)l merchantFormattedAddress:(id)self0 transactionTime:(double)self1 transactionType:(id)self2 transactionLocation:(id)self3;
- (unint64_t)lookupTransactionType;
- (void)setCorrelationId:(id)id;
- (void)setIsAppleCard:(BOOL)card;
- (void)setLookupTransactionType:(unint64_t)type;
- (void)setMerchantAdamId:(id)id;
- (void)setReportersComment:(id)comment;
@end

@implementation MKWalletRAPReport

- (void)setLookupTransactionType:(unint64_t)type
{
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  details = [submissionParameters details];
  merchantLookupFeedback = [details merchantLookupFeedback];
  context = [merchantLookupFeedback context];
  [context setRequestTransactionType:type];
}

- (unint64_t)lookupTransactionType
{
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  details = [submissionParameters details];
  merchantLookupFeedback = [details merchantLookupFeedback];
  context = [merchantLookupFeedback context];
  requestTransactionType = [context requestTransactionType];

  return requestTransactionType;
}

- (void)setIsAppleCard:(BOOL)card
{
  cardCopy = card;
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  details = [submissionParameters details];
  merchantLookupFeedback = [details merchantLookupFeedback];
  context = [merchantLookupFeedback context];
  [context setIsAppleCard:cardCopy];
}

- (BOOL)isAppleCard
{
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  details = [submissionParameters details];
  merchantLookupFeedback = [details merchantLookupFeedback];
  context = [merchantLookupFeedback context];
  isAppleCard = [context isAppleCard];

  return isAppleCard;
}

- (NSString)correlationId
{
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  details = [submissionParameters details];
  merchantLookupFeedback = [details merchantLookupFeedback];
  context = [merchantLookupFeedback context];
  correlationId = [context correlationId];

  return correlationId;
}

- (void)setCorrelationId:(id)id
{
  v8 = [id copy];
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  details = [submissionParameters details];
  merchantLookupFeedback = [details merchantLookupFeedback];
  context = [merchantLookupFeedback context];
  [context setCorrelationId:v8];
}

- (NSString)reportersComment
{
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  commonCorrections = [submissionParameters commonCorrections];
  comments = [commonCorrections comments];

  return comments;
}

- (void)setReportersComment:(id)comment
{
  commentCopy = comment;
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  commonCorrections = [submissionParameters commonCorrections];

  if (!commonCorrections)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69A23E8]);
    submissionParameters2 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
    [submissionParameters2 setCommonCorrections:v6];
  }

  v8 = [commentCopy copy];
  submissionParameters3 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  commonCorrections2 = [submissionParameters3 commonCorrections];
  [commonCorrections2 setComments:v8];
}

- (NSString)merchantAdamId
{
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  details = [submissionParameters details];
  merchantLookupFeedback = [details merchantLookupFeedback];
  context = [merchantLookupFeedback context];
  merchantAdamId = [context merchantAdamId];

  return merchantAdamId;
}

- (void)setMerchantAdamId:(id)id
{
  v8 = [id copy];
  submissionParameters = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  details = [submissionParameters details];
  merchantLookupFeedback = [details merchantLookupFeedback];
  context = [merchantLookupFeedback context];
  [context setMerchantAdamId:v8];
}

- (id)initForMerchantIssue:(unint64_t)issue merchantIndustryCode:(int64_t)code mapsIdentifier:(unint64_t)identifier merchantName:(id)name merchantRawName:(id)rawName merchantIndustryCategory:(id)category merchantURL:(id)l merchantFormattedAddress:(id)self0 transactionTime:(double)self1 transactionType:(id)self2 transactionLocation:(id)self3
{
  var1 = location.var1;
  var0 = location.var0;
  issueCopy = issue;
  nameCopy = name;
  rawNameCopy = rawName;
  categoryCopy = category;
  lCopy = l;
  addressCopy = address;
  typeCopy = type;
  v41.receiver = self;
  v41.super_class = MKWalletRAPReport;
  v27 = [(MKWalletRAPReport *)&v41 init];
  if (v27)
  {
    v28 = objc_alloc(MEMORY[0x1E69A23F0]);
    identifierCopy = identifier;
    v40 = rawNameCopy;
    v30 = [v28 initWithMerchantIndustryCode:code mapsIdentifier:identifierCopy merchantName:nameCopy merchantRawName:rawNameCopy merchantIndustryCategory:categoryCopy merchantURL:lCopy merchantFormattedAddress:time transactionTime:var0 transactionType:var1 transactionLocation:addressCopy merchantBankTransactionInfo:{typeCopy, 0}];
    requestParameters = v27->_requestParameters;
    v27->_requestParameters = v30;

    v32 = objc_alloc_init(MEMORY[0x1E69A2400]);
    v33 = v32;
    v34 = nameCopy;
    if ((issueCopy & 2) != 0)
    {
      [v32 setIsMerchantIncorrect:1];
      if ((issueCopy & 1) == 0)
      {
LABEL_4:
        if ((issueCopy & 4) == 0)
        {
LABEL_6:
          submissionParameters = [(GEORPFeedbackRequestParameters *)v27->_requestParameters submissionParameters];
          details = [submissionParameters details];
          merchantLookupFeedback = [details merchantLookupFeedback];
          [merchantLookupFeedback setCorrections:v33];

          nameCopy = v34;
          rawNameCopy = v40;
          goto LABEL_7;
        }

LABEL_5:
        [v33 setIsOtherIssue:1];
        goto LABEL_6;
      }
    }

    else if ((issueCopy & 1) == 0)
    {
      goto LABEL_4;
    }

    [v33 setIsCategoryIncorrect:1];
    if ((issueCopy & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:

  return v27;
}

@end