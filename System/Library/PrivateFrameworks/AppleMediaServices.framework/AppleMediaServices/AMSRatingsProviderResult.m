@interface AMSRatingsProviderResult
- (AMSRatingsProviderResult)initWithData:(id)a3 mediaType:(unint64_t)a4 andStoreFront:(id)a5;
- (AMSRatingsProviderResult)initWithDictionaries:(id)a3 mediaType:(unint64_t)a4 andStoreFront:(id)a5;
- (AMSRatingsProviderResult)initWithURLResult:(id)a3 mediaType:(unint64_t)a4 andStoreFront:(id)a5;
- (id)_mapRatingsDictionaries:(id)a3 withMediaType:(unint64_t)a4 andStoreFront:(id)a5;
@end

@implementation AMSRatingsProviderResult

- (AMSRatingsProviderResult)initWithURLResult:(id)a3 mediaType:(unint64_t)a4 andStoreFront:(id)a5
{
  v8 = a5;
  v9 = [a3 object];
  v10 = [v9 objectForKeyedSubscript:@"data"];

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
    v12 = 0;
    goto LABEL_6;
  }

  self = [(AMSRatingsProviderResult *)self initWithDictionaries:v11 mediaType:a4 andStoreFront:v8];
  v12 = self;
LABEL_6:

  return v12;
}

- (AMSRatingsProviderResult)initWithData:(id)a3 mediaType:(unint64_t)a4 andStoreFront:(id)a5
{
  v8 = a5;
  v14 = 0;
  v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v14];
  v10 = v9;
  if (v14)
  {
    goto LABEL_2;
  }

  v12 = [v9 objectForKeyedSubscript:@"data"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v12 = v12;

  if (v12)
  {
    self = [(AMSRatingsProviderResult *)self initWithDictionaries:v12 mediaType:a4 andStoreFront:v8];
    v11 = self;
LABEL_7:

    goto LABEL_8;
  }

LABEL_2:
  v11 = 0;
LABEL_8:

  return v11;
}

- (AMSRatingsProviderResult)initWithDictionaries:(id)a3 mediaType:(unint64_t)a4 andStoreFront:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = AMSRatingsProviderResult;
  v10 = [(AMSRatingsProviderResult *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v12 = [(AMSRatingsProviderResult *)v10 _mapRatingsDictionaries:v8 withMediaType:a4 andStoreFront:v9];
    ratingsStoreFronts = v11->_ratingsStoreFronts;
    v11->_ratingsStoreFronts = v12;
  }

  return v11;
}

- (id)_mapRatingsDictionaries:(id)a3 withMediaType:(unint64_t)a4 andStoreFront:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(AMSRatingsProviderResult *)self _ratingInfoMediaTypeForTaskMediaType:a4];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__AMSRatingsProviderResult__mapRatingsDictionaries_withMediaType_andStoreFront___block_invoke;
  v14[3] = &unk_1E73BBA90;
  v15 = v8;
  v16 = v10;
  v11 = v8;
  v12 = [v9 ams_mapWithTransformIgnoresNil:v14];

  return v12;
}

@end