@interface ATXHomeScreenApp
- (ATXHomeScreenApp)initWithBundleId:(id)a3 predictionSource:(id)a4 score:(double)a5 uniqueDaysLaunched:(unint64_t)a6 rawLaunchCount:(unint64_t)a7;
- (ATXHomeScreenApp)initWithCoder:(id)a3;
- (ATXHomeScreenPage)page;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXHomeScreenApp:(id)a3;
- (id)dictionaryRepresentationForIntrospection;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXHomeScreenApp

- (ATXHomeScreenPage)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

- (ATXHomeScreenApp)initWithBundleId:(id)a3 predictionSource:(id)a4 score:(double)a5 uniqueDaysLaunched:(unint64_t)a6 rawLaunchCount:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v20.receiver = self;
  v20.super_class = ATXHomeScreenApp;
  v14 = [(ATXHomeScreenApp *)&v20 init];
  if (v14)
  {
    v15 = [v12 copy];
    bundleId = v14->_bundleId;
    v14->_bundleId = v15;

    v17 = [v13 copy];
    predictionSource = v14->_predictionSource;
    v14->_predictionSource = v17;

    v14->_score = a5;
    v14->_numUniqueDays = a6;
    v14->_numAppLaunches = a7;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXHomeScreenApp *)self isEqualToATXHomeScreenApp:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXHomeScreenApp:(id)a3
{
  v4 = self->_bundleId;
  v5 = v4;
  if (v4 == *(a3 + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSString *)v4 isEqual:?];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  bundleId = self->_bundleId;
  v5 = a3;
  [v5 encodeObject:bundleId forKey:@"bundleId"];
  [v5 encodeObject:self->_predictionSource forKey:@"predictionSource"];
  [v5 encodeDouble:@"score" forKey:self->_score];
  [v5 encodeInteger:self->_numUniqueDays forKey:@"numUniqueDays"];
  [v5 encodeInteger:self->_numAppLaunches forKey:@"numAppLaunches"];
}

- (ATXHomeScreenApp)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ATXHomeScreenApp;
  v5 = [(ATXHomeScreenApp *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    bundleId = v5->_bundleId;
    v5->_bundleId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionSource"];
    predictionSource = v5->_predictionSource;
    v5->_predictionSource = v8;

    [v4 decodeDoubleForKey:@"score"];
    v5->_score = v10;
    v5->_numUniqueDays = [v4 decodeIntegerForKey:@"numUniqueDays"];
    v5->_numAppLaunches = [v4 decodeIntegerForKey:@"numAppLaunches"];
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