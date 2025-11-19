@interface MKWalletRAPReport
- (BOOL)isAppleCard;
- (NSString)correlationId;
- (NSString)merchantAdamId;
- (NSString)reportersComment;
- (id)initForMerchantIssue:(unint64_t)a3 merchantIndustryCode:(int64_t)a4 mapsIdentifier:(unint64_t)a5 merchantName:(id)a6 merchantRawName:(id)a7 merchantIndustryCategory:(id)a8 merchantURL:(id)a9 merchantFormattedAddress:(id)a10 transactionTime:(double)a11 transactionType:(id)a12 transactionLocation:(id)a13;
- (unint64_t)lookupTransactionType;
- (void)setCorrelationId:(id)a3;
- (void)setIsAppleCard:(BOOL)a3;
- (void)setLookupTransactionType:(unint64_t)a3;
- (void)setMerchantAdamId:(id)a3;
- (void)setReportersComment:(id)a3;
@end

@implementation MKWalletRAPReport

- (void)setLookupTransactionType:(unint64_t)a3
{
  v7 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v4 = [v7 details];
  v5 = [v4 merchantLookupFeedback];
  v6 = [v5 context];
  [v6 setRequestTransactionType:a3];
}

- (unint64_t)lookupTransactionType
{
  v2 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v3 = [v2 details];
  v4 = [v3 merchantLookupFeedback];
  v5 = [v4 context];
  v6 = [v5 requestTransactionType];

  return v6;
}

- (void)setIsAppleCard:(BOOL)a3
{
  v3 = a3;
  v7 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v4 = [v7 details];
  v5 = [v4 merchantLookupFeedback];
  v6 = [v5 context];
  [v6 setIsAppleCard:v3];
}

- (BOOL)isAppleCard
{
  v2 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v3 = [v2 details];
  v4 = [v3 merchantLookupFeedback];
  v5 = [v4 context];
  v6 = [v5 isAppleCard];

  return v6;
}

- (NSString)correlationId
{
  v2 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v3 = [v2 details];
  v4 = [v3 merchantLookupFeedback];
  v5 = [v4 context];
  v6 = [v5 correlationId];

  return v6;
}

- (void)setCorrelationId:(id)a3
{
  v8 = [a3 copy];
  v4 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v5 = [v4 details];
  v6 = [v5 merchantLookupFeedback];
  v7 = [v6 context];
  [v7 setCorrelationId:v8];
}

- (NSString)reportersComment
{
  v2 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v3 = [v2 commonCorrections];
  v4 = [v3 comments];

  return v4;
}

- (void)setReportersComment:(id)a3
{
  v11 = a3;
  v4 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v5 = [v4 commonCorrections];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69A23E8]);
    v7 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
    [v7 setCommonCorrections:v6];
  }

  v8 = [v11 copy];
  v9 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v10 = [v9 commonCorrections];
  [v10 setComments:v8];
}

- (NSString)merchantAdamId
{
  v2 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v3 = [v2 details];
  v4 = [v3 merchantLookupFeedback];
  v5 = [v4 context];
  v6 = [v5 merchantAdamId];

  return v6;
}

- (void)setMerchantAdamId:(id)a3
{
  v8 = [a3 copy];
  v4 = [(GEORPFeedbackRequestParameters *)self->_requestParameters submissionParameters];
  v5 = [v4 details];
  v6 = [v5 merchantLookupFeedback];
  v7 = [v6 context];
  [v7 setMerchantAdamId:v8];
}

- (id)initForMerchantIssue:(unint64_t)a3 merchantIndustryCode:(int64_t)a4 mapsIdentifier:(unint64_t)a5 merchantName:(id)a6 merchantRawName:(id)a7 merchantIndustryCategory:(id)a8 merchantURL:(id)a9 merchantFormattedAddress:(id)a10 transactionTime:(double)a11 transactionType:(id)a12 transactionLocation:(id)a13
{
  var1 = a13.var1;
  var0 = a13.var0;
  v19 = a3;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a12;
  v41.receiver = self;
  v41.super_class = MKWalletRAPReport;
  v27 = [(MKWalletRAPReport *)&v41 init];
  if (v27)
  {
    v28 = objc_alloc(MEMORY[0x1E69A23F0]);
    v29 = a5;
    v40 = v22;
    v30 = [v28 initWithMerchantIndustryCode:a4 mapsIdentifier:v29 merchantName:v21 merchantRawName:v22 merchantIndustryCategory:v23 merchantURL:v24 merchantFormattedAddress:a11 transactionTime:var0 transactionType:var1 transactionLocation:v25 merchantBankTransactionInfo:{v26, 0}];
    requestParameters = v27->_requestParameters;
    v27->_requestParameters = v30;

    v32 = objc_alloc_init(MEMORY[0x1E69A2400]);
    v33 = v32;
    v34 = v21;
    if ((v19 & 2) != 0)
    {
      [v32 setIsMerchantIncorrect:1];
      if ((v19 & 1) == 0)
      {
LABEL_4:
        if ((v19 & 4) == 0)
        {
LABEL_6:
          v35 = [(GEORPFeedbackRequestParameters *)v27->_requestParameters submissionParameters];
          v36 = [v35 details];
          v37 = [v36 merchantLookupFeedback];
          [v37 setCorrections:v33];

          v21 = v34;
          v22 = v40;
          goto LABEL_7;
        }

LABEL_5:
        [v33 setIsOtherIssue:1];
        goto LABEL_6;
      }
    }

    else if ((v19 & 1) == 0)
    {
      goto LABEL_4;
    }

    [v33 setIsCategoryIncorrect:1];
    if ((v19 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:

  return v27;
}

@end