@interface _LTDisambiguationLinkConfiguration
- (NSSet)edgeTypes;
- (_LTDisambiguationLinkConfiguration)initWithCoder:(id)a3;
- (_LTDisambiguationLinkConfiguration)initWithSourceRange:(_NSRange)a3 targetRange:(_NSRange)a4 adjacencyList:(id)a5 gender:(id)a6 defaultGender:(id)a7;
- (_LTDisambiguationLinkConfiguration)initWithSourceRange:(_NSRange)a3 targetRange:(_NSRange)a4 unvalidatedAdjacencyList:(id)a5;
- (_LTDisambiguationLinkConfiguration)initWithSourceText:(id)a3 sourceSnippet:(id)a4 targetText:(id)a5 targetSnippet:(id)a6 adjacencyList:(id)a7 gender:(id)a8 defaultGender:(id)a9;
- (_LTDisambiguationLinkConfiguration)initWithSourceText:(id)a3 sourceSnippet:(id)a4 targetText:(id)a5 targetSnippet:(id)a6 unvalidatedAdjacencyList:(id)a7;
- (_NSRange)sourceRange;
- (_NSRange)targetRange;
- (id)_unvalidatedEdgeFromAdjacencyListMatchingTargetNodeIndex:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_finishValidating;
- (void)_insertPrefix:(id)a3;
- (void)_validateWithAdjacencyList:(id)a3 gender:(id)a4 defaultGender:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTDisambiguationLinkConfiguration

- (_LTDisambiguationLinkConfiguration)initWithSourceRange:(_NSRange)a3 targetRange:(_NSRange)a4 adjacencyList:(id)a5 gender:(id)a6 defaultGender:(id)a7
{
  length = a4.length;
  location = a4.location;
  v10 = a3.length;
  v11 = a3.location;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = _LTDisambiguationLinkConfiguration;
  v16 = [(_LTDisambiguationLinkConfiguration *)&v22 init];
  v17 = v16;
  if (v16)
  {
    v16->_sourceRange.location = v11;
    v16->_sourceRange.length = v10;
    v16->_targetRange.location = location;
    v16->_targetRange.length = length;
    v18 = [v13 copy];
    adjacencyList = v17->_adjacencyList;
    v17->_adjacencyList = v18;

    objc_storeStrong(&v17->_gender, a6);
    objc_storeStrong(&v17->_defaultGender, a7);
    v20 = v17;
  }

  return v17;
}

- (_LTDisambiguationLinkConfiguration)initWithSourceText:(id)a3 sourceSnippet:(id)a4 targetText:(id)a5 targetSnippet:(id)a6 adjacencyList:(id)a7 gender:(id)a8 defaultGender:(id)a9
{
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = a6;
  v19 = a5;
  v20 = [a3 rangeOfString:a4];
  v22 = v21;
  v23 = [v19 rangeOfString:v18];
  v25 = v24;

  v26 = 0;
  if (v20 != 0x7FFFFFFFFFFFFFFFLL && v23 != 0x7FFFFFFFFFFFFFFFLL)
  {
    self = [(_LTDisambiguationLinkConfiguration *)self initWithSourceRange:v20 targetRange:v22 adjacencyList:v23 gender:v25 defaultGender:v15, v16, v17];
    v26 = self;
  }

  return v26;
}

- (_LTDisambiguationLinkConfiguration)initWithSourceRange:(_NSRange)a3 targetRange:(_NSRange)a4 unvalidatedAdjacencyList:(id)a5
{
  length = a4.length;
  location = a4.location;
  v7 = a3.length;
  v8 = a3.location;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = _LTDisambiguationLinkConfiguration;
  v11 = [(_LTDisambiguationLinkConfiguration *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v11->_sourceRange.location = v8;
    v11->_sourceRange.length = v7;
    v11->_targetRange.location = location;
    v11->_targetRange.length = length;
    v13 = [v10 copy];
    unvalidatedAdjacencyList = v12->_unvalidatedAdjacencyList;
    v12->_unvalidatedAdjacencyList = v13;

    adjacencyList = v12->_adjacencyList;
    v12->_adjacencyList = MEMORY[0x277CBEBF8];

    gender = v12->_gender;
    v12->_gender = 0;

    defaultGender = v12->_defaultGender;
    v12->_defaultGender = 0;

    v18 = v12;
  }

  return v12;
}

- (_LTDisambiguationLinkConfiguration)initWithSourceText:(id)a3 sourceSnippet:(id)a4 targetText:(id)a5 targetSnippet:(id)a6 unvalidatedAdjacencyList:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = [a3 rangeOfString:a4];
  v17 = v16;
  v18 = [v14 rangeOfString:v13];
  v20 = v19;

  v21 = 0;
  if (v15 != 0x7FFFFFFFFFFFFFFFLL && v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    self = [(_LTDisambiguationLinkConfiguration *)self initWithSourceRange:v15 targetRange:v17 unvalidatedAdjacencyList:v18, v20, v12];
    v21 = self;
  }

  return v21;
}

- (NSSet)edgeTypes
{
  v2 = [(NSArray *)self->_adjacencyList _ltCompactMap:&__block_literal_global_3];
  v3 = v2;
  v4 = MEMORY[0x277CBEBF8];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [MEMORY[0x277CBEB98] setWithArray:v5];

  return v6;
}

- (void)_validateWithAdjacencyList:(id)a3 gender:(id)a4 defaultGender:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 copy];
  adjacencyList = self->_adjacencyList;
  self->_adjacencyList = v10;

  gender = self->_gender;
  self->_gender = v8;
  v14 = v8;

  defaultGender = self->_defaultGender;
  self->_defaultGender = v9;
}

- (void)_finishValidating
{
  unvalidatedAdjacencyList = self->_unvalidatedAdjacencyList;
  self->_unvalidatedAdjacencyList = 0;
  MEMORY[0x2821F96F8]();
}

- (id)_unvalidatedEdgeFromAdjacencyListMatchingTargetNodeIndex:(unint64_t)a3
{
  unvalidatedAdjacencyList = self->_unvalidatedAdjacencyList;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __95___LTDisambiguationLinkConfiguration__unvalidatedEdgeFromAdjacencyListMatchingTargetNodeIndex___block_invoke;
  v6[3] = &__block_descriptor_40_e32_B16__0___LTUnvalidatedEdgeInfo_8l;
  v6[4] = a3;
  v4 = [(NSArray *)unvalidatedAdjacencyList lt_firstObjectPassingTest:v6];

  return v4;
}

- (void)_insertPrefix:(id)a3
{
  v4 = [a3 length];
  if (v4)
  {
    self->_sourceRange.location += v4;
    self->_targetRange.location += v4;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCAE60];
  location = self->_sourceRange.location;
  length = self->_sourceRange.length;
  v9 = a3;
  v7 = [v4 valueWithRange:{location, length}];
  [v9 encodeObject:v7 forKey:@"sourceRange"];

  v8 = [MEMORY[0x277CCAE60] valueWithRange:{self->_targetRange.location, self->_targetRange.length}];
  [v9 encodeObject:v8 forKey:@"targetRange"];

  [v9 encodeObject:self->_adjacencyList forKey:@"adjacencyList"];
  [v9 encodeObject:self->_gender forKey:@"gender"];
  [v9 encodeObject:self->_defaultGender forKey:@"defaultGender"];
}

- (_LTDisambiguationLinkConfiguration)initWithCoder:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _LTDisambiguationLinkConfiguration;
  v5 = [(_LTDisambiguationLinkConfiguration *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceRange"];
    v5->_sourceRange.location = [v6 rangeValue];
    v5->_sourceRange.length = v7;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetRange"];
    v5->_targetRange.location = [v8 rangeValue];
    v5->_targetRange.length = v9;

    v10 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"adjacencyList"];
    adjacencyList = v5->_adjacencyList;
    v5->_adjacencyList = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gender"];
    gender = v5->_gender;
    v5->_gender = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultGender"];
    defaultGender = v5->_defaultGender;
    v5->_defaultGender = v17;

    v19 = v5;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  unvalidatedAdjacencyList = self->_unvalidatedAdjacencyList;
  v6 = [MEMORY[0x277CBEA60] allocWithZone:?];
  if (unvalidatedAdjacencyList)
  {
    v7 = [v6 initWithArray:self->_unvalidatedAdjacencyList copyItems:1];
    v8 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithSourceRange:targetRange:unvalidatedAdjacencyList:", self->_sourceRange.location, self->_sourceRange.length, self->_targetRange.location, self->_targetRange.length, v7}];
  }

  else
  {
    v7 = [v6 initWithArray:self->_adjacencyList copyItems:1];
    v9 = [objc_opt_class() allocWithZone:a3];
    v10 = [(NSNumber *)self->_gender copy];
    v11 = [(NSNumber *)self->_defaultGender copy];
    v8 = [v9 initWithSourceRange:self->_sourceRange.location targetRange:self->_sourceRange.length adjacencyList:self->_targetRange.location gender:self->_targetRange.length defaultGender:{v7, v10, v11}];
  }

  return v8;
}

- (_NSRange)sourceRange
{
  length = self->_sourceRange.length;
  location = self->_sourceRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)targetRange
{
  length = self->_targetRange.length;
  location = self->_targetRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end