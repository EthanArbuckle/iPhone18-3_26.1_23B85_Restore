@interface _LTDisambiguationUserSelection
- (BOOL)isEqual:(id)a3;
- (_LTDisambiguationUserSelection)initWithEdge:(id)a3 sourceSnippet:(id)a4 linkIndex:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation _LTDisambiguationUserSelection

- (_LTDisambiguationUserSelection)initWithEdge:(id)a3 sourceSnippet:(id)a4 linkIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = _LTDisambiguationUserSelection;
  v10 = [(_LTDisambiguationUserSelection *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    edge = v10->_edge;
    v10->_edge = v11;

    v13 = [v9 copy];
    sourceSnippet = v10->_sourceSnippet;
    v10->_sourceSnippet = v13;

    v10->_linkIndex = a5;
    v15 = v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(_LTDisambiguationUserSelection *)self edge];
    v6 = [v4 edge];
    if ([v5 isEqual:v6])
    {
      v7 = [(_LTDisambiguationUserSelection *)self sourceSnippet];
      v8 = [v4 sourceSnippet];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(_LTDisambiguationUserSelection *)self linkIndex];
        v10 = v9 == [v4 linkIndex];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(_LTDisambiguationUserSelection *)self edge];
  v4 = [v3 hash];
  v5 = [(_LTDisambiguationUserSelection *)self sourceSnippet];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_LTDisambiguationUserSelection linkIndex](self, "linkIndex")}];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v4 = [(_LTDirectedEdge *)v3->_edge copy];
  v5 = [(NSString *)v3->_sourceSnippet copy];
  v6 = [(_LTDisambiguationUserSelection *)v3 initWithEdge:v4 sourceSnippet:v5 linkIndex:v3->_linkIndex];

  return v6;
}

@end