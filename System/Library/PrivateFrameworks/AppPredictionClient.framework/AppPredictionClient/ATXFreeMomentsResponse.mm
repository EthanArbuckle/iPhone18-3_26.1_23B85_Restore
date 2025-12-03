@interface ATXFreeMomentsResponse
- (ATXFreeMomentsResponse)initWithCoder:(id)coder;
- (ATXFreeMomentsResponse)initWithFreeMoments:(id)moments;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXFreeMomentsResponse

- (ATXFreeMomentsResponse)initWithFreeMoments:(id)moments
{
  momentsCopy = moments;
  v9.receiver = self;
  v9.super_class = ATXFreeMomentsResponse;
  v5 = [(ATXFreeMomentsResponse *)&v9 init];
  if (v5)
  {
    v6 = [momentsCopy copy];
    freeMoments = v5->_freeMoments;
    v5->_freeMoments = v6;
  }

  return v5;
}

- (ATXFreeMomentsResponse)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = [v4 setWithObject:objc_opt_class()];
  v7 = [coderCopy decodeArrayOfObjectsOfClasses:v6 forKey:@"freeMoments"];

  if (v7)
  {
    self = [(ATXFreeMomentsResponse *)self initWithFreeMoments:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  freeMoments = [(ATXFreeMomentsResponse *)self freeMoments];
  [coderCopy encodeObject:freeMoments forKey:@"freeMoments"];
}

@end