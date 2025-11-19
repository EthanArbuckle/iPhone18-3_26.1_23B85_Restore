@interface AFMultiUserStateSnapshot
+ (id)newWithBuilder:(id)a3;
- (AFMultiUserStateSnapshot)initWithBuilder:(id)a3;
- (AFMultiUserStateSnapshot)initWithCoder:(id)a3;
- (AFMultiUserStateSnapshot)initWithDictionaryRepresentation:(id)a3;
- (AFMultiUserStateSnapshot)initWithSerializedBackingStore:(id)a3;
- (AFMultiUserStateSnapshot)initWithVtSatScore:(id)a3 confidenceScores:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)ad_shortDescription;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFMultiUserStateSnapshot

- (id)buildDictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  vtSatScore = self->_vtSatScore;
  if (vtSatScore)
  {
    [v3 setObject:vtSatScore forKey:@"vtSatScore"];
  }

  if (self->_confidenceScores)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_confidenceScores, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_confidenceScores;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) buildDictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
    [v4 setObject:v13 forKey:@"confidenceScores"];
  }

  v14 = [v4 copy];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (AFMultiUserStateSnapshot)initWithDictionaryRepresentation:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"vtSatScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v9 = [v5 objectForKey:@"confidenceScores"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = self;
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[AFSharedConfidenceScore alloc] initWithDictionaryRepresentation:v16];

              if (v17)
              {
                [v10 addObject:v17];
              }
            }

            else
            {

              v17 = 0;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v13);
      }

      v18 = [v10 copy];
      self = v21;
    }

    else
    {
      v18 = 0;
    }

    self = [(AFMultiUserStateSnapshot *)self initWithVtSatScore:v7 confidenceScores:v18];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  vtSatScore = self->_vtSatScore;
  v5 = a3;
  [v5 encodeObject:vtSatScore forKey:@"AFMultiUserStateSnapshot::vtSatScore"];
  [v5 encodeObject:self->_confidenceScores forKey:@"AFMultiUserStateSnapshot::confidenceScores"];
}

- (AFMultiUserStateSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFMultiUserStateSnapshot::vtSatScore"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"AFMultiUserStateSnapshot::confidenceScores"];

  v10 = [(AFMultiUserStateSnapshot *)self initWithVtSatScore:v5 confidenceScores:v9];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AFMultiUserStateSnapshot *)v5 vtSatScore];
      vtSatScore = self->_vtSatScore;
      if (vtSatScore == v6 || [(NSNumber *)vtSatScore isEqual:v6])
      {
        v8 = [(AFMultiUserStateSnapshot *)v5 confidenceScores];
        confidenceScores = self->_confidenceScores;
        v10 = confidenceScores == v8 || [(NSArray *)confidenceScores isEqual:v8];
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

  return v10;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFMultiUserStateSnapshot;
  v5 = [(AFMultiUserStateSnapshot *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {vtSatScore = %@, confidenceScores = %@}", v5, self->_vtSatScore, self->_confidenceScores];

  return v6;
}

- (AFMultiUserStateSnapshot)initWithVtSatScore:(id)a3 confidenceScores:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__AFMultiUserStateSnapshot_initWithVtSatScore_confidenceScores___block_invoke;
  v12[3] = &unk_1E73425C0;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [(AFMultiUserStateSnapshot *)self initWithBuilder:v12];

  return v10;
}

void __64__AFMultiUserStateSnapshot_initWithVtSatScore_confidenceScores___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setVtSatScore:v3];
  [v4 setConfidenceScores:*(a1 + 40)];
}

- (AFMultiUserStateSnapshot)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFMultiUserStateSnapshot;
  v5 = [(AFMultiUserStateSnapshot *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFMultiUserStateSnapshotMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFMultiUserStateSnapshotMutation *)v7 isDirty])
    {
      v8 = [(_AFMultiUserStateSnapshotMutation *)v7 getVtSatScore];
      v9 = [v8 copy];
      vtSatScore = v6->_vtSatScore;
      v6->_vtSatScore = v9;

      v11 = [(_AFMultiUserStateSnapshotMutation *)v7 getConfidenceScores];
      v12 = [v11 copy];
      confidenceScores = v6->_confidenceScores;
      v6->_confidenceScores = v12;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFMultiUserStateSnapshotMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFMultiUserStateSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFMultiUserStateSnapshot);
      v7 = [(_AFMultiUserStateSnapshotMutation *)v5 getVtSatScore];
      v8 = [v7 copy];
      vtSatScore = v6->_vtSatScore;
      v6->_vtSatScore = v8;

      v10 = [(_AFMultiUserStateSnapshotMutation *)v5 getConfidenceScores];
      v11 = [v10 copy];
      confidenceScores = v6->_confidenceScores;
      v6->_confidenceScores = v11;
    }

    else
    {
      v6 = [(AFMultiUserStateSnapshot *)self copy];
    }
  }

  else
  {
    v6 = [(AFMultiUserStateSnapshot *)self copy];
  }

  return v6;
}

- (id)ad_shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AFMultiUserStateSnapshot *)self vtSatScore];
  v5 = [(AFMultiUserStateSnapshot *)self confidenceScores];
  v6 = [v5 count];
  v7 = @"YES";
  if (!v6)
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"(vtSatScore = %@, hasConfidenceScores = %@)", v4, v7];

  return v8;
}

- (AFMultiUserStateSnapshot)initWithSerializedBackingStore:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(AFMultiUserStateSnapshot *)self initWithDictionaryRepresentation:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end