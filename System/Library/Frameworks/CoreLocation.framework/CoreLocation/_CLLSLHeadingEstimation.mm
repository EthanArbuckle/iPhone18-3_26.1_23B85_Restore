@interface _CLLSLHeadingEstimation
- (_CLLSLHeadingEstimation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLLSLHeadingEstimation

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLLSLHeadingEstimation;
  [(_CLLSLHeadingEstimation *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_status;
  *(v5 + 16) = [(NSArray *)self->_headings copyWithZone:zone];
  return v5;
}

- (_CLLSLHeadingEstimation)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = _CLLSLHeadingEstimation;
  v4 = [(_CLLSLHeadingEstimation *)&v8 init];
  if (v4)
  {
    v4->_status = [coder decodeIntForKey:@"status"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_headings = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"headings"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt:self->_status forKey:@"status"];
  headings = self->_headings;

  [coder encodeObject:headings forKey:@"headings"];
}

- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent
{
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v6 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"<NSArray: %p> {\n", -[_CLLSLHeadingEstimation headings](self, "headings"))}];
  v7 = [(NSArray *)[(_CLLSLHeadingEstimation *)self headings] count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = [(NSArray *)[(_CLLSLHeadingEstimation *)self headings] objectAtIndex:v9];
      indent = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\t\t", indent];
      [v6 appendString:{objc_msgSend(v10, "stringWithFormat:", @"%@%@%@", indent, @"\t", objc_msgSend(v11, "descriptionWithMemberIndent:endIndent:", indent, objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@\t\t", endIndent)))}];
      ++v9;
      if (--v8)
      {
        v13 = @",\n";
      }

      else
      {
        v13 = @"\n";
      }

      [v6 appendString:v13];
    }

    while (v8);
  }

  [v6 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@}", indent)}];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<_CLLSLHeadingEstimation: %p> {\n%@.status = %d, \n%@.headings = %@\n%@}", self, indent, -[_CLLSLHeadingEstimation status](self, "status"), indent, v6, endIndent];
}

@end