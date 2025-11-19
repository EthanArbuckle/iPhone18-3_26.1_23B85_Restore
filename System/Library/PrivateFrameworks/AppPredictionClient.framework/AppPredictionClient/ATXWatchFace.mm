@interface ATXWatchFace
- (ATXWatchFace)initWithCoder:(id)a3;
- (ATXWatchFace)initWithStyle:(int64_t)a3 complications:(id)a4 selected:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXWatchFace:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXWatchFace

- (ATXWatchFace)initWithStyle:(int64_t)a3 complications:(id)a4 selected:(BOOL)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = ATXWatchFace;
  v10 = [(ATXWatchFace *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_style = a3;
    objc_storeStrong(&v10->_complications, a4);
    v11->_selected = a5;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ATXWatchFace *)self style];
  v5 = [(ATXWatchFace *)self complications];
  v6 = [(ATXWatchFace *)self isSelected];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"ATXWatchFace: style: %ld, complications: %@, selected: %@", v4, v5, v7];

  return v8;
}

- (ATXWatchFace)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"style"];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 initWithObjects:{v8, v9, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"complications"];
  v12 = [v11 _pas_filteredArrayWithTest:&__block_literal_global_66];

  v13 = [v4 decodeBoolForKey:@"selected"];
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

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[ATXWatchFace style](self forKey:{"style"), @"style"}];
  v4 = [(ATXWatchFace *)self complications];
  [v5 encodeObject:v4 forKey:@"complications"];

  [v5 encodeBool:-[ATXWatchFace isSelected](self forKey:{"isSelected"), @"selected"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ATXWatchFace *)self style];
  v6 = [(ATXWatchFace *)self complications];
  v7 = [v4 initWithStyle:v5 complications:v6 selected:{-[ATXWatchFace isSelected](self, "isSelected")}];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXWatchFace *)self isEqualToATXWatchFace:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXWatchFace:(id)a3
{
  v4 = a3;
  if (self->_style != v4[2])
  {
    goto LABEL_4;
  }

  v5 = self->_complications;
  v6 = v5;
  if (v5 == v4[3])
  {

    goto LABEL_6;
  }

  v7 = [(NSArray *)v5 isEqual:?];

  if (v7)
  {
LABEL_6:
    v8 = self->_selected == *(v4 + 8);
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