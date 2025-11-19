@interface PHContentEditingOutputRequestOptions
- (PHContentEditingOutputRequestOptions)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setOnlyChangingOriginalChoice:(BOOL)a3;
@end

@implementation PHContentEditingOutputRequestOptions

- (void)encodeWithCoder:(id)a3
{
  asyncAdjustment = self->_asyncAdjustment;
  v5 = a3;
  [v5 encodeBool:asyncAdjustment forKey:@"asyncAdjustment"];
  [v5 encodeBool:self->_onlyChangingOriginalChoice forKey:@"onlyChangingOriginalChoice"];
  [v5 encodeInteger:self->_playbackStyle forKey:@"playbackStyle"];
  [v5 encodeBool:self->_preferHEICForRenderedImages forKey:@"preferHEICForRenderedImages"];
}

- (PHContentEditingOutputRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PHContentEditingOutputRequestOptions;
  v5 = [(PHContentEditingOutputRequestOptions *)&v7 init];
  if (v5)
  {
    v5->_asyncAdjustment = [v4 decodeBoolForKey:@"asyncAdjustment"];
    v5->_onlyChangingOriginalChoice = [v4 decodeBoolForKey:@"onlyChangingOriginalChoice"];
    v5->_playbackStyle = [v4 decodeIntegerForKey:@"playbackStyle"];
    v5->_preferHEICForRenderedImages = [v4 decodeBoolForKey:@"preferHEICForRenderedImages"];
  }

  return v5;
}

- (void)setOnlyChangingOriginalChoice:(BOOL)a3
{
  if (a3)
  {
    self->_asyncAdjustment = 1;
  }

  self->_onlyChangingOriginalChoice = a3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"N";
  if (self->_asyncAdjustment)
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  if (self->_onlyChangingOriginalChoice)
  {
    v7 = @"Y";
  }

  v9 = [v3 stringWithFormat:@"<%@ %p> async: %@, onlyOriginalChoice: %@, ", v5, self, v8, v7];

  return v9;
}

@end