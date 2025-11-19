@interface SHSignatureAlignment
- (BOOL)isEqual:(id)a3;
- (SHSignatureAlignment)initWithCoder:(id)a3;
- (SHSignatureAlignment)initWithQueryRange:(id)a3 referenceRange:(id)a4 alignmentConfidence:(float)a5;
- (SHSignatureAlignment)initWithSerializedRepresentation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)serializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SHSignatureAlignment

- (SHSignatureAlignment)initWithQueryRange:(id)a3 referenceRange:(id)a4 alignmentConfidence:(float)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SHSignatureAlignment;
  v11 = [(SHSignatureAlignment *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_queryTimeRange, a3);
    objc_storeStrong(&v12->_referenceTimeRange, a4);
    v12->_alignmentConfidence = a5;
  }

  return v12;
}

- (SHSignatureAlignment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHSignatureAlignmentQueryRangeKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SHSignatureAlignmentReferenceRangeKey"];
  [v4 decodeFloatForKey:@"SHSignatureAlignmentConfidenceKey"];
  v8 = v7;

  LODWORD(v9) = v8;
  v10 = [(SHSignatureAlignment *)self initWithQueryRange:v5 referenceRange:v6 alignmentConfidence:v9];

  return v10;
}

- (SHSignatureAlignment)initWithSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [v5 count];

  v7 = MEMORY[0x277CBE660];
  if (v6 != 3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Signature alignment must have a query range, reference range and alignment confidence, not %@", v4}];
  }

  v8 = [v4 objectForKeyedSubscript:@"SHSignatureAlignmentQueryRangeKey"];
  v9 = [v4 objectForKeyedSubscript:@"SHSignatureAlignmentReferenceRangeKey"];
  v10 = [v4 objectForKeyedSubscript:@"SHSignatureAlignmentConfidenceKey"];
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
  v4 = [(SHSignatureAlignment *)self queryTimeRange];
  v5 = [v4 description];
  v6 = [(SHSignatureAlignment *)self referenceTimeRange];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"Query: %@, Reference: %@", v5, v7];

  return v8;
}

- (id)serializedRepresentation
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"SHSignatureAlignmentQueryRangeKey";
  v3 = [(SHSignatureAlignment *)self queryTimeRange];
  v4 = [v3 serializedRepresentation];
  v13[0] = v4;
  v12[1] = @"SHSignatureAlignmentReferenceRangeKey";
  v5 = [(SHSignatureAlignment *)self referenceTimeRange];
  v6 = [v5 serializedRepresentation];
  v13[1] = v6;
  v12[2] = @"SHSignatureAlignmentConfidenceKey";
  v7 = MEMORY[0x277CCABB0];
  [(SHSignatureAlignment *)self alignmentConfidence];
  v8 = [v7 numberWithFloat:?];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(SHSignatureAlignment *)self queryTimeRange];
  [v6 encodeObject:v4 forKey:@"SHSignatureAlignmentQueryRangeKey"];

  v5 = [(SHSignatureAlignment *)self referenceTimeRange];
  [v6 encodeObject:v5 forKey:@"SHSignatureAlignmentReferenceRangeKey"];

  [(SHSignatureAlignment *)self alignmentConfidence];
  [v6 encodeFloat:@"SHSignatureAlignmentConfidenceKey" forKey:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(SHSignatureAlignment *)self queryTimeRange];
  v6 = [v5 copyWithZone:a3];

  v7 = [(SHSignatureAlignment *)self referenceTimeRange];
  v8 = [v7 copyWithZone:a3];

  [(SHSignatureAlignment *)self alignmentConfidence];
  v10 = v9;
  v11 = [SHSignatureAlignment allocWithZone:a3];
  LODWORD(v12) = v10;
  v13 = [(SHSignatureAlignment *)v11 initWithQueryRange:v6 referenceRange:v8 alignmentConfidence:v12];

  return v13;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CCABB0];
  v22 = [(SHSignatureAlignment *)self queryTimeRange];
  [v22 lowerBound];
  v21 = [v3 numberWithDouble:?];
  v4 = [v21 hash];
  v5 = MEMORY[0x277CCABB0];
  v6 = [(SHSignatureAlignment *)self queryTimeRange];
  [v6 upperBound];
  v7 = [v5 numberWithDouble:?];
  v8 = [v7 hash] ^ v4;
  v9 = MEMORY[0x277CCABB0];
  v10 = [(SHSignatureAlignment *)self referenceTimeRange];
  [v10 lowerBound];
  v11 = [v9 numberWithDouble:?];
  v12 = [v11 hash];
  v13 = MEMORY[0x277CCABB0];
  v14 = [(SHSignatureAlignment *)self referenceTimeRange];
  [v14 upperBound];
  v15 = [v13 numberWithDouble:?];
  v16 = v8 ^ v12 ^ [v15 hash];
  v17 = MEMORY[0x277CCABB0];
  [(SHSignatureAlignment *)self alignmentConfidence];
  v18 = [v17 numberWithFloat:?];
  v19 = [v18 hash];

  return v16 ^ v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SHSignatureAlignment *)self queryTimeRange];
      v7 = [(SHSignatureAlignment *)v5 queryTimeRange];
      v8 = [v6 isEqualToRange:v7 withTolerance:0.01];

      v9 = [(SHSignatureAlignment *)self referenceTimeRange];
      v10 = [(SHSignatureAlignment *)v5 referenceTimeRange];
      v11 = [v9 isEqualToRange:v10 withTolerance:0.01];

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