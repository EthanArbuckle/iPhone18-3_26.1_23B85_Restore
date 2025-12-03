@interface SHSignatureAlignment
- (BOOL)isEqual:(id)equal;
- (SHSignatureAlignment)initWithCoder:(id)coder;
- (SHSignatureAlignment)initWithQueryRange:(id)range referenceRange:(id)referenceRange alignmentConfidence:(float)confidence;
- (SHSignatureAlignment)initWithSerializedRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)serializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHSignatureAlignment

- (SHSignatureAlignment)initWithQueryRange:(id)range referenceRange:(id)referenceRange alignmentConfidence:(float)confidence
{
  rangeCopy = range;
  referenceRangeCopy = referenceRange;
  v14.receiver = self;
  v14.super_class = SHSignatureAlignment;
  v11 = [(SHSignatureAlignment *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queryTimeRange, range);
    objc_storeStrong(&v12->_referenceTimeRange, referenceRange);
    v12->_alignmentConfidence = confidence;
  }

  return v12;
}

- (SHSignatureAlignment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHSignatureAlignmentQueryRangeKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SHSignatureAlignmentReferenceRangeKey"];
  [coderCopy decodeFloatForKey:@"SHSignatureAlignmentConfidenceKey"];
  v8 = v7;

  LODWORD(v9) = v8;
  v10 = [(SHSignatureAlignment *)self initWithQueryRange:v5 referenceRange:v6 alignmentConfidence:v9];

  return v10;
}

- (SHSignatureAlignment)initWithSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  allKeys = [representationCopy allKeys];
  v6 = [allKeys count];

  v7 = MEMORY[0x277CBE660];
  if (v6 != 3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Signature alignment must have a query range, reference range and alignment confidence, not %@", representationCopy}];
  }

  v8 = [representationCopy objectForKeyedSubscript:@"SHSignatureAlignmentQueryRangeKey"];
  v9 = [representationCopy objectForKeyedSubscript:@"SHSignatureAlignmentReferenceRangeKey"];
  v10 = [representationCopy objectForKeyedSubscript:@"SHSignatureAlignmentConfidenceKey"];
  if (![v8 count] || !objc_msgSend(v9, "count") || !v10)
  {
    [MEMORY[0x277CBEAD8] raise:*v7 format:@"Invalid serialization format for signature alignment."];
  }

  v11 = [[SHRange alloc] initWithSerializedRepresentation:v8];
  v12 = [[SHRange alloc] initWithSerializedRepresentation:v9];
  [v10 floatValue];
  v13 = [(SHSignatureAlignment *)self initWithQueryRange:v11 referenceRange:v12 alignmentConfidence:?];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  queryTimeRange = [(SHSignatureAlignment *)self queryTimeRange];
  v5 = [queryTimeRange description];
  referenceTimeRange = [(SHSignatureAlignment *)self referenceTimeRange];
  v7 = [referenceTimeRange description];
  v8 = [v3 stringWithFormat:@"Query: %@, Reference: %@", v5, v7];

  return v8;
}

- (id)serializedRepresentation
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"SHSignatureAlignmentQueryRangeKey";
  queryTimeRange = [(SHSignatureAlignment *)self queryTimeRange];
  serializedRepresentation = [queryTimeRange serializedRepresentation];
  v13[0] = serializedRepresentation;
  v12[1] = @"SHSignatureAlignmentReferenceRangeKey";
  referenceTimeRange = [(SHSignatureAlignment *)self referenceTimeRange];
  serializedRepresentation2 = [referenceTimeRange serializedRepresentation];
  v13[1] = serializedRepresentation2;
  v12[2] = @"SHSignatureAlignmentConfidenceKey";
  v7 = MEMORY[0x277CCABB0];
  [(SHSignatureAlignment *)self alignmentConfidence];
  v8 = [v7 numberWithFloat:?];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  queryTimeRange = [(SHSignatureAlignment *)self queryTimeRange];
  [coderCopy encodeObject:queryTimeRange forKey:@"SHSignatureAlignmentQueryRangeKey"];

  referenceTimeRange = [(SHSignatureAlignment *)self referenceTimeRange];
  [coderCopy encodeObject:referenceTimeRange forKey:@"SHSignatureAlignmentReferenceRangeKey"];

  [(SHSignatureAlignment *)self alignmentConfidence];
  [coderCopy encodeFloat:@"SHSignatureAlignmentConfidenceKey" forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  queryTimeRange = [(SHSignatureAlignment *)self queryTimeRange];
  v6 = [queryTimeRange copyWithZone:zone];

  referenceTimeRange = [(SHSignatureAlignment *)self referenceTimeRange];
  v8 = [referenceTimeRange copyWithZone:zone];

  [(SHSignatureAlignment *)self alignmentConfidence];
  v10 = v9;
  v11 = [SHSignatureAlignment allocWithZone:zone];
  LODWORD(v12) = v10;
  v13 = [(SHSignatureAlignment *)v11 initWithQueryRange:v6 referenceRange:v8 alignmentConfidence:v12];

  return v13;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CCABB0];
  queryTimeRange = [(SHSignatureAlignment *)self queryTimeRange];
  [queryTimeRange lowerBound];
  v21 = [v3 numberWithDouble:?];
  v4 = [v21 hash];
  v5 = MEMORY[0x277CCABB0];
  queryTimeRange2 = [(SHSignatureAlignment *)self queryTimeRange];
  [queryTimeRange2 upperBound];
  v7 = [v5 numberWithDouble:?];
  v8 = [v7 hash] ^ v4;
  v9 = MEMORY[0x277CCABB0];
  referenceTimeRange = [(SHSignatureAlignment *)self referenceTimeRange];
  [referenceTimeRange lowerBound];
  v11 = [v9 numberWithDouble:?];
  v12 = [v11 hash];
  v13 = MEMORY[0x277CCABB0];
  referenceTimeRange2 = [(SHSignatureAlignment *)self referenceTimeRange];
  [referenceTimeRange2 upperBound];
  v15 = [v13 numberWithDouble:?];
  v16 = v8 ^ v12 ^ [v15 hash];
  v17 = MEMORY[0x277CCABB0];
  [(SHSignatureAlignment *)self alignmentConfidence];
  v18 = [v17 numberWithFloat:?];
  v19 = [v18 hash];

  return v16 ^ v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      queryTimeRange = [(SHSignatureAlignment *)self queryTimeRange];
      queryTimeRange2 = [(SHSignatureAlignment *)v5 queryTimeRange];
      v8 = [queryTimeRange isEqualToRange:queryTimeRange2 withTolerance:0.01];

      referenceTimeRange = [(SHSignatureAlignment *)self referenceTimeRange];
      referenceTimeRange2 = [(SHSignatureAlignment *)v5 referenceTimeRange];
      v11 = [referenceTimeRange isEqualToRange:referenceTimeRange2 withTolerance:0.01];

      v12 = 0;
      if (v8 && v11)
      {
        [(SHSignatureAlignment *)self alignmentConfidence];
        v14 = v13;
        [(SHSignatureAlignment *)v5 alignmentConfidence];
        v12 = vabds_f32(v14, v15) < 0.01;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end