@interface _LTDisambiguationUserSelection
- (BOOL)isEqual:(id)equal;
- (_LTDisambiguationUserSelection)initWithEdge:(id)edge sourceSnippet:(id)snippet linkIndex:(unint64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation _LTDisambiguationUserSelection

- (_LTDisambiguationUserSelection)initWithEdge:(id)edge sourceSnippet:(id)snippet linkIndex:(unint64_t)index
{
  edgeCopy = edge;
  snippetCopy = snippet;
  v17.receiver = self;
  v17.super_class = _LTDisambiguationUserSelection;
  v10 = [(_LTDisambiguationUserSelection *)&v17 init];
  if (v10)
  {
    v11 = [edgeCopy copy];
    edge = v10->_edge;
    v10->_edge = v11;

    v13 = [snippetCopy copy];
    sourceSnippet = v10->_sourceSnippet;
    v10->_sourceSnippet = v13;

    v10->_linkIndex = index;
    v15 = v10;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    edge = [(_LTDisambiguationUserSelection *)self edge];
    edge2 = [equalCopy edge];
    if ([edge isEqual:edge2])
    {
      sourceSnippet = [(_LTDisambiguationUserSelection *)self sourceSnippet];
      sourceSnippet2 = [equalCopy sourceSnippet];
      if ([sourceSnippet isEqualToString:sourceSnippet2])
      {
        linkIndex = [(_LTDisambiguationUserSelection *)self linkIndex];
        v10 = linkIndex == [equalCopy linkIndex];
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
  edge = [(_LTDisambiguationUserSelection *)self edge];
  v4 = [edge hash];
  sourceSnippet = [(_LTDisambiguationUserSelection *)self sourceSnippet];
  v6 = [sourceSnippet hash] ^ v4;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_LTDisambiguationUserSelection linkIndex](self, "linkIndex")}];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v4 = [(_LTDirectedEdge *)selfCopy->_edge copy];
  v5 = [(NSString *)selfCopy->_sourceSnippet copy];
  v6 = [(_LTDisambiguationUserSelection *)selfCopy initWithEdge:v4 sourceSnippet:v5 linkIndex:selfCopy->_linkIndex];

  return v6;
}

@end