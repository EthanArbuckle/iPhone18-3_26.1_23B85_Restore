@interface AMSRatingsStorefrontResult
- (AMSRatingsStorefrontResult)initWithData:(id)data mediaType:(unint64_t)type;
- (AMSRatingsStorefrontResult)initWithDictionaries:(id)dictionaries mediaType:(unint64_t)type;
- (AMSRatingsStorefrontResult)initWithURLResult:(id)result mediaType:(unint64_t)type;
- (id)_mapRatingsDictionaries:(id)dictionaries withMediaType:(unint64_t)type;
@end

@implementation AMSRatingsStorefrontResult

- (AMSRatingsStorefrontResult)initWithURLResult:(id)result mediaType:(unint64_t)type
{
  object = [result object];
  v7 = [object objectForKeyedSubscript:@"data"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
    goto LABEL_5;
  }

  v8 = v7;

  if (!v8)
  {
LABEL_5:
    selfCopy = 0;
    goto LABEL_6;
  }

  self = [(AMSRatingsStorefrontResult *)self initWithDictionaries:v8 mediaType:type];
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (AMSRatingsStorefrontResult)initWithData:(id)data mediaType:(unint64_t)type
{
  v11 = 0;
  v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:data options:0 error:&v11];
  v7 = v6;
  if (v11)
  {
    goto LABEL_2;
  }

  v9 = [v6 objectForKeyedSubscript:@"data"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    selfCopy = 0;
    goto LABEL_7;
  }

  v9 = v9;

  if (v9)
  {
    self = [(AMSRatingsStorefrontResult *)self initWithDictionaries:v9 mediaType:type];
    selfCopy = self;
LABEL_7:

    goto LABEL_8;
  }

LABEL_2:
  selfCopy = 0;
LABEL_8:

  return selfCopy;
}

- (AMSRatingsStorefrontResult)initWithDictionaries:(id)dictionaries mediaType:(unint64_t)type
{
  dictionariesCopy = dictionaries;
  v12.receiver = self;
  v12.super_class = AMSRatingsStorefrontResult;
  v7 = [(AMSRatingsStorefrontResult *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v9 = [(AMSRatingsStorefrontResult *)v7 _mapRatingsDictionaries:dictionariesCopy withMediaType:type];
    ratingsStoreFronts = v8->_ratingsStoreFronts;
    v8->_ratingsStoreFronts = v9;
  }

  return v8;
}

- (id)_mapRatingsDictionaries:(id)dictionaries withMediaType:(unint64_t)type
{
  dictionariesCopy = dictionaries;
  v7 = [(AMSRatingsStorefrontResult *)self _ratingInfoMediaTypeForTaskMediaType:type];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__AMSRatingsStorefrontResult__mapRatingsDictionaries_withMediaType___block_invoke;
  v10[3] = &__block_descriptor_40_e44___AMSRatingsStoreFront_16__0__NSDictionary_8l;
  v10[4] = v7;
  v8 = [dictionariesCopy ams_mapWithTransformIgnoresNil:v10];

  return v8;
}

@end