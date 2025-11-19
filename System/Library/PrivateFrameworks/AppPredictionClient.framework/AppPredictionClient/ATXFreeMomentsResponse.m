@interface ATXFreeMomentsResponse
- (ATXFreeMomentsResponse)initWithCoder:(id)a3;
- (ATXFreeMomentsResponse)initWithFreeMoments:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXFreeMomentsResponse

- (ATXFreeMomentsResponse)initWithFreeMoments:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXFreeMomentsResponse;
  v5 = [(ATXFreeMomentsResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    freeMoments = v5->_freeMoments;
    v5->_freeMoments = v6;
  }

  return v5;
}

- (ATXFreeMomentsResponse)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 setWithObject:objc_opt_class()];
  v7 = [v5 decodeArrayOfObjectsOfClasses:v6 forKey:@"freeMoments"];

  if (v7)
  {
    self = [(ATXFreeMomentsResponse *)self initWithFreeMoments:v7];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXFreeMomentsResponse *)self freeMoments];
  [v4 encodeObject:v5 forKey:@"freeMoments"];
}

@end