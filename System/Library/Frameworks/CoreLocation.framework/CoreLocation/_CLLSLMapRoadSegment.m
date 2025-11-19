@interface _CLLSLMapRoadSegment
- (_CLLSLMapRoadSegment)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMemberIndent:(id)a3 endIndent:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _CLLSLMapRoadSegment

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLLSLMapRoadSegment;
  [(_CLLSLMapRoadSegment *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_roadID;
  v5[2] = [(NSArray *)self->_polylines copyWithZone:a3];
  return v5;
}

- (_CLLSLMapRoadSegment)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = _CLLSLMapRoadSegment;
  v4 = [(_CLLSLMapRoadSegment *)&v8 init];
  if (v4)
  {
    v4->_roadID = [a3 decodeInt64ForKey:@"roadID"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_polylines = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"polylines"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt64:self->_roadID forKey:@"roadID"];
  polylines = self->_polylines;

  [a3 encodeObject:polylines forKey:@"polylines"];
}

- (id)descriptionWithMemberIndent:(id)a3 endIndent:(id)a4
{
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v6 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"<NSArray: %p> {\n", -[_CLLSLMapRoadSegment polylines](self, "polylines"))}];
  v7 = [(NSArray *)[(_CLLSLMapRoadSegment *)self polylines] count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      [v6 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%@%@", a3, @"\t", -[NSArray objectAtIndex:](-[_CLLSLMapRoadSegment polylines](self, "polylines"), "objectAtIndex:", v9++))}];
      if (--v8)
      {
        v10 = @",\n";
      }

      else
      {
        v10 = @"\n";
      }

      [v6 appendString:v10];
    }

    while (v8);
  }

  [v6 appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@}", a3)}];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<_CLLSLMapRoadSegment: %p> {\n%@.roadID = %llu, \n%@.polylines = %@\n%@}", self, a3, -[_CLLSLMapRoadSegment roadID](self, "roadID"), a3, v6, a4];
}

@end