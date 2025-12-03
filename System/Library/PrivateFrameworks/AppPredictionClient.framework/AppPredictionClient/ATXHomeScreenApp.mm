@interface ATXHomeScreenApp
- (ATXHomeScreenApp)initWithBundleId:(id)id predictionSource:(id)source score:(double)score uniqueDaysLaunched:(unint64_t)launched rawLaunchCount:(unint64_t)count;
- (ATXHomeScreenApp)initWithCoder:(id)coder;
- (ATXHomeScreenPage)page;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXHomeScreenApp:(id)app;
- (id)dictionaryRepresentationForIntrospection;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXHomeScreenApp

- (ATXHomeScreenPage)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

- (ATXHomeScreenApp)initWithBundleId:(id)id predictionSource:(id)source score:(double)score uniqueDaysLaunched:(unint64_t)launched rawLaunchCount:(unint64_t)count
{
  idCopy = id;
  sourceCopy = source;
  v20.receiver = self;
  v20.super_class = ATXHomeScreenApp;
  v14 = [(ATXHomeScreenApp *)&v20 init];
  if (v14)
  {
    v15 = [idCopy copy];
    bundleId = v14->_bundleId;
    v14->_bundleId = v15;

    v17 = [sourceCopy copy];
    predictionSource = v14->_predictionSource;
    v14->_predictionSource = v17;

    v14->_score = score;
    v14->_numUniqueDays = launched;
    v14->_numAppLaunches = count;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHomeScreenApp *)self isEqualToATXHomeScreenApp:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXHomeScreenApp:(id)app
{
  v4 = self->_bundleId;
  v5 = v4;
  if (v4 == *(app + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSString *)v4 isEqual:?];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  bundleId = self->_bundleId;
  coderCopy = coder;
  [coderCopy encodeObject:bundleId forKey:@"bundleId"];
  [coderCopy encodeObject:self->_predictionSource forKey:@"predictionSource"];
  [coderCopy encodeDouble:@"score" forKey:self->_score];
  [coderCopy encodeInteger:self->_numUniqueDays forKey:@"numUniqueDays"];
  [coderCopy encodeInteger:self->_numAppLaunches forKey:@"numAppLaunches"];
}

- (ATXHomeScreenApp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ATXHomeScreenApp;
  v5 = [(ATXHomeScreenApp *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    bundleId = v5->_bundleId;
    v5->_bundleId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionSource"];
    predictionSource = v5->_predictionSource;
    v5->_predictionSource = v8;

    [coderCopy decodeDoubleForKey:@"score"];
    v5->_score = v10;
    v5->_numUniqueDays = [coderCopy decodeIntegerForKey:@"numUniqueDays"];
    v5->_numAppLaunches = [coderCopy decodeIntegerForKey:@"numAppLaunches"];
  }

  return v5;
}

- (id)dictionaryRepresentationForIntrospection
{
  v10[5] = *MEMORY[0x1E69E9840];
  v9[0] = @"bundleId";
  v9[1] = @"predictionSource";
  predictionSource = self->_predictionSource;
  if (!predictionSource)
  {
    predictionSource = @"<nil>";
  }

  v10[0] = self->_bundleId;
  v10[1] = predictionSource;
  v9[2] = @"score";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
  v10[2] = v4;
  v9[3] = @"numUniqueDays";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numUniqueDays];
  v10[3] = v5;
  v9[4] = @"numAppLaunches";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numAppLaunches];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

@end