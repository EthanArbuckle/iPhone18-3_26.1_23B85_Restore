@interface EKUILocationRowModel
- (EKUILocationRowModel)initWithConferenceRoom:(id)a3;
- (EKUILocationRowModel)initWithSuggestedLocation:(id)a3;
- (EKUILocationRowModel)initWithType:(unint64_t)a3 location:(id)a4 conference:(id)a5;
- (id)description;
@end

@implementation EKUILocationRowModel

- (EKUILocationRowModel)initWithConferenceRoom:(id)a3
{
  v4 = [MEMORY[0x1E6966B08] locationWithTitle:a3];
  v5 = [(EKUILocationRowModel *)self initWithType:0 location:v4 conference:0];

  return v5;
}

- (EKUILocationRowModel)initWithSuggestedLocation:(id)a3
{
  v4 = [MEMORY[0x1E6966B08] locationWithTitle:a3];
  v5 = [(EKUILocationRowModel *)self initWithType:3 location:v4 conference:0];

  return v5;
}

- (EKUILocationRowModel)initWithType:(unint64_t)a3 location:(id)a4 conference:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = EKUILocationRowModel;
  v11 = [(EKUILocationRowModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_locationType = a3;
    objc_storeStrong(&v11->_location, a4);
    objc_storeStrong(&v12->_conference, a5);
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_locationType];
  v5 = [v3 stringWithFormat:@"EKUILocationRowModel: locationType: %@, location: %@, conference: %@, cell: %@", v4, self->_location, self->_conference, self->_cell];

  return v5;
}

@end