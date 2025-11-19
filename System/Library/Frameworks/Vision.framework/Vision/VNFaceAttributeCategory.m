@interface VNFaceAttributeCategory
- (BOOL)isEqual:(id)a3;
- (VNFaceAttributeCategory)initWithCoder:(id)a3;
- (VNFaceAttributeCategory)initWithRequestRevision:(unint64_t)a3;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)_computeLabel;
- (void)encodeWithCoder:(id)a3;
- (void)setAllLabelsWithConfidences:(id)a3;
@end

@implementation VNFaceAttributeCategory

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
      v6 = [(VNFaceAttributeCategory *)self requestRevision];
      if (v6 == [(VNFaceAttributeCategory *)v5 requestRevision]&& ([(VNFaceAttributeCategory *)self label], v7 = objc_claimAutoreleasedReturnValue(), [(VNFaceAttributeCategory *)v5 label], v8 = objc_claimAutoreleasedReturnValue(), v9 = VisionCoreEqualOrNilObjects(), v8, v7, (v9 & 1) != 0))
      {
        v10 = [(VNFaceAttributeCategory *)self allLabelsWithConfidences];
        v11 = [(VNFaceAttributeCategory *)v5 allLabelsWithConfidences];
        v12 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = VNFaceAttributeCategory;
  v3 = [(VNFaceAttributeCategory *)&v10 hash];
  v4 = [(VNFaceAttributeCategory *)self requestRevision];
  v5 = [(VNFaceAttributeCategory *)self label];
  v6 = [v5 hash];

  v7 = [(VNFaceAttributeCategory *)self allLabelsWithConfidences];
  v8 = [v7 hash] ^ __ROR8__(v6 ^ __ROR8__(v4 ^ __ROR8__(v3, 51), 51), 51);

  return v8;
}

- (id)vn_cloneObject
{
  v3 = [objc_alloc(objc_opt_class()) initWithRequestRevision:self->_requestRevision];
  v4 = v3;
  if (v3)
  {
    objc_storeStrong((v3 + 8), self->_mostLikelyLabel);
    v5 = [(NSArray *)self->_allLabelsWithConfidences copy];
    v6 = v4[2];
    v4[2] = v5;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:0 forKey:@"VNFaceAttributeCategoryVersion"];
  [v4 encodeInteger:self->_requestRevision forKey:@"facrRev"];
  [v4 encodeObject:self->_mostLikelyLabel forKey:@"FAC_label"];
  [v4 encodeObject:self->_allLabelsWithConfidences forKey:@"FAC_LAC"];
}

- (VNFaceAttributeCategory)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 decodeIntegerForKey:@"VNFaceAttributeCategoryVersion"])
  {
    v5 = 0;
  }

  else
  {
    v5 = -[VNFaceAttributeCategory initWithRequestRevision:](self, "initWithRequestRevision:", [v4 decodeIntegerForKey:@"facrRev"]);
    if (v5)
    {
      v6 = objc_opt_class();
      v7 = [v4 decodeObjectOfClass:v6 forKey:@"FAC_label"];
      mostLikelyLabel = v5->_mostLikelyLabel;
      v5->_mostLikelyLabel = v7;

      v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), v6, 0}];
      v10 = [v4 decodeObjectOfClasses:v9 forKey:@"FAC_LAC"];
      v11 = [v10 copy];
      allLabelsWithConfidences = v5->_allLabelsWithConfidences;
      v5->_allLabelsWithConfidences = v11;

      self = v5;
      v5 = self;
    }

    else
    {
      self = 0;
    }
  }

  return v5;
}

- (VNFaceAttributeCategory)initWithRequestRevision:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = VNFaceAttributeCategory;
  v4 = [(VNFaceAttributeCategory *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_requestRevision = a3;
    v6 = v4;
  }

  return v5;
}

- (void)setAllLabelsWithConfidences:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  allLabelsWithConfidences = self->_allLabelsWithConfidences;
  self->_allLabelsWithConfidences = v4;

  [(VNFaceAttributeCategory *)self _computeLabel];
}

- (void)_computeLabel
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_allLabelsWithConfidences;
  v4 = 0;
  v5 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        if (!v4 || ([*(*(&v14 + 1) + 8 * v7) confidence], v10 = v9, -[VNObservation confidence](v4, "confidence"), v10 > v11))
        {
          v12 = v8;

          v4 = v12;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  mostLikelyLabel = self->_mostLikelyLabel;
  self->_mostLikelyLabel = v4;
}

@end