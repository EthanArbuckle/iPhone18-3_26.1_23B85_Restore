@interface _ACComponentVector
- (_ACComponentVector)initWithCoder:(id)a3;
- (_ACComponentVector)initWithVector:(const void *)a3;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ACComponentVector

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 32) = 1;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = objc_opt_new();
  begin = self->mVector.__begin_;
  for (i = self->mVector.__end_; begin != i; begin += 16)
  {
    v7 = [[_ACComponentWrapper alloc] initWithComponent:begin];
    [v4 addObject:v7];
  }

  [v8 encodeObject:v4 forKey:@"components"];
}

- (_ACComponentVector)initWithCoder:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"components"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            std::vector<std::shared_ptr<CA::ADMPackFormat>>::push_back[abi:ne200100](&self->mVector, (v13 + 8));
            self->mVector.mSorted = 0;
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return self;
}

- (_ACComponentVector)initWithVector:(const void *)a3
{
  p_mVector = &self->mVector;
  if (p_mVector != a3)
  {
    std::vector<std::shared_ptr<APComponent>>::__assign_with_size[abi:ne200100]<std::shared_ptr<APComponent>*,std::shared_ptr<APComponent>*>(p_mVector, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 4);
  }

  self->mVector.mSorted = *(a3 + 24);
  return self;
}

@end