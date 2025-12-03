@interface PHContentEditingOutputRequestOptions
- (PHContentEditingOutputRequestOptions)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setOnlyChangingOriginalChoice:(BOOL)choice;
@end

@implementation PHContentEditingOutputRequestOptions

- (void)encodeWithCoder:(id)coder
{
  asyncAdjustment = self->_asyncAdjustment;
  coderCopy = coder;
  [coderCopy encodeBool:asyncAdjustment forKey:@"asyncAdjustment"];
  [coderCopy encodeBool:self->_onlyChangingOriginalChoice forKey:@"onlyChangingOriginalChoice"];
  [coderCopy encodeInteger:self->_playbackStyle forKey:@"playbackStyle"];
  [coderCopy encodeBool:self->_preferHEICForRenderedImages forKey:@"preferHEICForRenderedImages"];
}

- (PHContentEditingOutputRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PHContentEditingOutputRequestOptions;
  v5 = [(PHContentEditingOutputRequestOptions *)&v7 init];
  if (v5)
  {
    v5->_asyncAdjustment = [coderCopy decodeBoolForKey:@"asyncAdjustment"];
    v5->_onlyChangingOriginalChoice = [coderCopy decodeBoolForKey:@"onlyChangingOriginalChoice"];
    v5->_playbackStyle = [coderCopy decodeIntegerForKey:@"playbackStyle"];
    v5->_preferHEICForRenderedImages = [coderCopy decodeBoolForKey:@"preferHEICForRenderedImages"];
  }

  return v5;
}

- (void)setOnlyChangingOriginalChoice:(BOOL)choice
{
  if (choice)
  {
    self->_asyncAdjustment = 1;
  }

  self->_onlyChangingOriginalChoice = choice;
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