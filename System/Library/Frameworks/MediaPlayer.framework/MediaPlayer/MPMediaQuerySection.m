@interface MPMediaQuerySection
- (MPMediaQuerySection)init;
- (MPMediaQuerySection)initWithCoder:(id)a3;
- (NSRange)range;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) _init];
  [v4 setTitle:self->_title];
  [v4 setRange:{self->_range.location, self->_range.length}];
  [v4 setSectionIndexTitleIndex:self->_sectionIndexTitleIndex];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"MPTitle"];
  [v5 encodeInteger:self->_range.location forKey:@"MPRangeLocation"];
  [v5 encodeInteger:self->_range.length forKey:@"MPRangeLength"];
  [v5 encodeInteger:self->_sectionIndexTitleIndex forKey:@"MPSectionIndex"];
}

- (MPMediaQuerySection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaQuerySection *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPTitle"];
    [(MPMediaQuerySection *)v5 setTitle:v6];

    -[MPMediaQuerySection setRange:](v5, "setRange:", [v4 decodeIntegerForKey:@"MPRangeLocation"], objc_msgSend(v4, "decodeIntegerForKey:", @"MPRangeLength"));
    -[MPMediaQuerySection setSectionIndexTitleIndex:](v5, "setSectionIndexTitleIndex:", [v4 decodeIntegerForKey:@"MPSectionIndex"]);
  }

  return v5;
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