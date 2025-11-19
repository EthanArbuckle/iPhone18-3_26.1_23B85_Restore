@interface SwiftUIContainerCell
- (SwiftUIContainerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setNewSwiftUIViewFromSpecifier:(id)a3;
- (void)setSeparatorStyle:(int64_t)a3;
@end

@implementation SwiftUIContainerCell

- (SwiftUIContainerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = SwiftUIContainerCell;
  v9 = [(SwiftUIContainerCell *)&v12 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    [(SwiftUIContainerCell *)v9 setNewSwiftUIViewFromSpecifier:v8];
  }

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SwiftUIContainerCell;
  v4 = a3;
  [(SwiftUIContainerCell *)&v5 refreshCellContentsWithSpecifier:v4];
  [(SwiftUIContainerCell *)self setNewSwiftUIViewFromSpecifier:v4, v5.receiver, v5.super_class];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = SwiftUIContainerCell;
  [(SwiftUIContainerCell *)&v6 prepareForReuse];
  v3 = [(SwiftUIContainerCell *)self child];

  if (v3)
  {
    v4 = [(SwiftUIContainerCell *)self child];
    v5 = [v4 view];
    [v5 removeFromSuperview];

    [(SwiftUIContainerCell *)self setChild:0];
  }
}

- (void)setNewSwiftUIViewFromSpecifier:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"SwiftUIContainerCellViewController"];
  [(SwiftUIContainerCell *)self setChild:v4];

  v5 = [(SwiftUIContainerCell *)self child];
  v6 = [v5 view];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(SwiftUIContainerCell *)self contentView];
  v8 = [(SwiftUIContainerCell *)self child];
  v9 = [v8 view];
  [v7 addSubview:v9];

  v34 = [(SwiftUIContainerCell *)self child];
  v33 = [v34 view];
  v31 = [v33 topAnchor];
  v32 = [(SwiftUIContainerCell *)self contentView];
  v30 = [v32 topAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v35[0] = v29;
  v28 = [(SwiftUIContainerCell *)self child];
  v27 = [v28 view];
  v25 = [v27 leadingAnchor];
  v26 = [(SwiftUIContainerCell *)self contentView];
  v24 = [v26 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v35[1] = v23;
  v22 = [(SwiftUIContainerCell *)self child];
  v21 = [v22 view];
  v19 = [v21 trailingAnchor];
  v10 = [(SwiftUIContainerCell *)self contentView];
  v11 = [v10 trailingAnchor];
  v12 = [v19 constraintEqualToAnchor:v11];
  v35[2] = v12;
  v13 = [(SwiftUIContainerCell *)self child];
  v14 = [v13 view];
  v15 = [v14 bottomAnchor];
  v16 = [(SwiftUIContainerCell *)self contentView];
  v17 = [v16 bottomAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v35[3] = v18;
  v20 = [NSArray arrayWithObjects:v35 count:4];

  [NSLayoutConstraint activateConstraints:v20];
  [(SwiftUIContainerCell *)self setNeedsLayout];
  [(SwiftUIContainerCell *)self setNeedsDisplay];
}

- (void)setSeparatorStyle:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = SwiftUIContainerCell;
  [(SwiftUIContainerCell *)&v3 setSeparatorStyle:0];
}

@end