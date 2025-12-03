@interface MPMediaQuerySection
- (MPMediaQuerySection)init;
- (MPMediaQuerySection)initWithCoder:(id)coder;
- (NSRange)range;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPMediaQuerySection

- (NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [objc_alloc(objc_opt_class()) _init];
  [_init setTitle:self->_title];
  [_init setRange:{self->_range.location, self->_range.length}];
  [_init setSectionIndexTitleIndex:self->_sectionIndexTitleIndex];
  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"MPTitle"];
  [coderCopy encodeInteger:self->_range.location forKey:@"MPRangeLocation"];
  [coderCopy encodeInteger:self->_range.length forKey:@"MPRangeLength"];
  [coderCopy encodeInteger:self->_sectionIndexTitleIndex forKey:@"MPSectionIndex"];
}

- (MPMediaQuerySection)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(MPMediaQuerySection *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPTitle"];
    [(MPMediaQuerySection *)_init setTitle:v6];

    -[MPMediaQuerySection setRange:](_init, "setRange:", [coderCopy decodeIntegerForKey:@"MPRangeLocation"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"MPRangeLength"));
    -[MPMediaQuerySection setSectionIndexTitleIndex:](_init, "setSectionIndexTitleIndex:", [coderCopy decodeIntegerForKey:@"MPSectionIndex"]);
  }

  return _init;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = MPMediaQuerySection;
  v3 = [(MPMediaQuerySection *)&v8 description];
  title = self->_title;
  v5 = NSStringFromRange(self->_range);
  v6 = [v3 stringByAppendingFormat:@" title=%@, range=%@, sectionIndexTitleIndex=%lu", title, v5, self->_sectionIndexTitleIndex];

  return v6;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MPMediaQuerySection;
  return [(MPMediaQuerySection *)&v3 init];
}

- (MPMediaQuerySection)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"MPMediaQuerySection is a read-only object"];

  return 0;
}

@end