@interface AMSRatingsProviderResult
- (AMSRatingsProviderResult)initWithData:(id)data mediaType:(unint64_t)type andStoreFront:(id)front;
- (AMSRatingsProviderResult)initWithDictionaries:(id)dictionaries mediaType:(unint64_t)type andStoreFront:(id)front;
- (AMSRatingsProviderResult)initWithURLResult:(id)result mediaType:(unint64_t)type andStoreFront:(id)front;
- (id)_mapRatingsDictionaries:(id)dictionaries withMediaType:(unint64_t)type andStoreFront:(id)front;
@end

@implementation AMSRatingsProviderResult

- (AMSRatingsProviderResult)initWithURLResult:(id)result mediaType:(unint64_t)type andStoreFront:(id)front
{
  frontCopy = front;
  object = [result object];
  v10 = [object objectForKeyedSubscript:@"data"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
    goto LABEL_5;
  }

  v11 = v10;

  if (!v11)
  {
LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  self = [(AMSRatingsProviderResult *)self initWithDictionaries:v11 mediaType:type andStoreFront:frontCopy];
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (AMSRatingsProviderResult)initWithData:(id)data mediaType:(unint64_t)type andStoreFront:(id)front
{
  frontCopy = front;
  v14 = 0;
  v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:data options:0 error:&v14];
  v10 = v9;
  if (v14)
  {
    goto LABEL_2;
  }

  v12 = [v9 objectForKeyedSubscript:@"data"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    selfCopy = 0;
    goto LABEL_7;
  }

  v12 = v12;

  if (v12)
  {
    self = [(AMSRatingsProviderResult *)self initWithDictionaries:v12 mediaType:type andStoreFront:frontCopy];
    selfCopy = self;
LABEL_7:

    goto LABEL_8;
  }

LABEL_2:
  selfCopy = 0;
LABEL_8:

  return selfCopy;
}

- (AMSRatingsProviderResult)initWithDictionaries:(id)dictionaries mediaType:(unint64_t)type andStoreFront:(id)front
{
  dictionariesCopy = dictionaries;
  frontCopy = front;
  v15.receiver = self;
  v15.super_class = AMSRatingsProviderResult;
  v10 = [(AMSRatingsProviderResult *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v12 = [(AMSRatingsProviderResult *)v10 _mapRatingsDictionaries:dictionariesCopy withMediaType:type andStoreFront:frontCopy];
    ratingsStoreFronts = v11->_ratingsStoreFronts;
    v11->_ratingsStoreFronts = v12;
  }

  return v11;
}

- (id)_mapRatingsDictionaries:(id)dictionaries withMediaType:(unint64_t)type andStoreFront:(id)front
{
  frontCopy = front;
  dictionariesCopy = dictionaries;
  v10 = [(AMSRatingsProviderResult *)self _ratingInfoMediaTypeForTaskMediaType:type];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__AMSRatingsProviderResult__mapRatingsDictionaries_withMediaType_andStoreFront___block_invoke;
  v14[3] = &unk_1E73BBA90;
  v15 = frontCopy;
  v16 = v10;
  v11 = frontCopy;
  v12 = [dictionariesCopy ams_mapWithTransformIgnoresNil:v14];

  return v12;
}

@end