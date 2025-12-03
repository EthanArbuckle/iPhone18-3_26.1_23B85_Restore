@interface ATXWatchFace
- (ATXWatchFace)initWithCoder:(id)coder;
- (ATXWatchFace)initWithStyle:(int64_t)style complications:(id)complications selected:(BOOL)selected;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXWatchFace:(id)face;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXWatchFace

- (ATXWatchFace)initWithStyle:(int64_t)style complications:(id)complications selected:(BOOL)selected
{
  complicationsCopy = complications;
  v13.receiver = self;
  v13.super_class = ATXWatchFace;
  v10 = [(ATXWatchFace *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_style = style;
    objc_storeStrong(&v10->_complications, complications);
    v11->_selected = selected;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  style = [(ATXWatchFace *)self style];
  complications = [(ATXWatchFace *)self complications];
  isSelected = [(ATXWatchFace *)self isSelected];
  v7 = @"NO";
  if (isSelected)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"ATXWatchFace: style: %ld, complications: %@, selected: %@", style, complications, v7];

  return v8;
}

- (ATXWatchFace)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"style"];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 initWithObjects:{v8, v9, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"complications"];
  v12 = [v11 _pas_filteredArrayWithTest:&__block_literal_global_66];

  v13 = [coderCopy decodeBoolForKey:@"selected"];
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v15 = [(ATXWatchFace *)self initWithStyle:v5 complications:v14 selected:v13];

  return v15;
}

uint64_t __30__ATXWatchFace_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[ATXWatchFace style](self forKey:{"style"), @"style"}];
  complications = [(ATXWatchFace *)self complications];
  [coderCopy encodeObject:complications forKey:@"complications"];

  [coderCopy encodeBool:-[ATXWatchFace isSelected](self forKey:{"isSelected"), @"selected"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  style = [(ATXWatchFace *)self style];
  complications = [(ATXWatchFace *)self complications];
  v7 = [v4 initWithStyle:style complications:complications selected:{-[ATXWatchFace isSelected](self, "isSelected")}];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXWatchFace *)self isEqualToATXWatchFace:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXWatchFace:(id)face
{
  faceCopy = face;
  if (self->_style != faceCopy[2])
  {
    goto LABEL_4;
  }

  v5 = self->_complications;
  v6 = v5;
  if (v5 == faceCopy[3])
  {

    goto LABEL_6;
  }

  v7 = [(NSArray *)v5 isEqual:?];

  if (v7)
  {
LABEL_6:
    v8 = self->_selected == *(faceCopy + 8);
    goto LABEL_7;
  }

LABEL_4:
  v8 = 0;
LABEL_7:

  return v8;
}

- (unint64_t)hash
{
  style = self->_style;
  v4 = [(NSArray *)self->_complications hash];
  return self->_selected - (v4 - style + 32 * style) + 32 * (v4 - style + 32 * style);
}

@end