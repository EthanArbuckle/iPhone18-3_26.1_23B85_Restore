@interface CarCardStackViewController
- (CarCardStackViewController)initWithCarCardContentControllers:(id)a3 layout:(id *)a4;
- (NSArray)cardContentControllers;
- (NSArray)cardViews;
- (void)addCardContentController:(id)a3;
- (void)insertCardContentController:(id)a3 atIndex:(unint64_t)a4;
- (void)removeCardContentController:(id)a3;
- (void)viewDidLoad;
@end

@implementation CarCardStackViewController

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = CarCardStackViewController;
  [(CarCardStackViewController *)&v21 viewDidLoad];
  v3 = [(CarCardStackViewController *)self view];
  [v3 addSubview:self->_cardContentStack];

  v19 = [(UIStackView *)self->_cardContentStack topAnchor];
  v20 = [(CarCardStackViewController *)self view];
  v18 = [v20 topAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v22[0] = v17;
  v15 = [(UIStackView *)self->_cardContentStack bottomAnchor];
  v16 = [(CarCardStackViewController *)self view];
  v14 = [v16 bottomAnchor];
  v4 = [v15 constraintEqualToAnchor:v14];
  v22[1] = v4;
  v5 = [(UIStackView *)self->_cardContentStack leftAnchor];
  v6 = [(CarCardStackViewController *)self view];
  v7 = [v6 leftAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  v22[2] = v8;
  v9 = [(UIStackView *)self->_cardContentStack rightAnchor];
  v10 = [(CarCardStackViewController *)self view];
  v11 = [v10 rightAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v22[3] = v12;
  v13 = [NSArray arrayWithObjects:v22 count:4];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)removeCardContentController:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CarCardStackViewController *)self cardContentStack];
  v6 = [v5 arrangedSubviews];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 content];

        if (v12 == v4)
        {
          v13 = [(CarCardStackViewController *)self cardContentStack];
          [v13 _maps_removeArrangedSubview:v11];

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)insertCardContentController:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v8 = [[CarCardView alloc] initWithContent:v6];

  v7 = [(CarCardStackViewController *)self cardContentStack];
  [v7 insertArrangedSubview:v8 atIndex:a4];
}

- (void)addCardContentController:(id)a3
{
  v4 = a3;
  v6 = [[CarCardView alloc] initWithContent:v4];

  v5 = [(CarCardStackViewController *)self cardContentStack];
  [v5 addArrangedSubview:v6];
}

- (NSArray)cardViews
{
  v2 = [(CarCardStackViewController *)self cardContentStack];
  v3 = [v2 arrangedSubviews];

  return v3;
}

- (NSArray)cardContentControllers
{
  v2 = [(CarCardStackViewController *)self cardContentStack];
  v3 = [v2 arrangedSubviews];
  v4 = [v3 valueForKey:@"content"];

  return v4;
}

- (CarCardStackViewController)initWithCarCardContentControllers:(id)a3 layout:(id *)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = CarCardStackViewController;
  v7 = [(CarCardStackViewController *)&v23 init];
  if (v7)
  {
    v8 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    cardContentStack = v7->_cardContentStack;
    v7->_cardContentStack = v8;

    [(UIStackView *)v7->_cardContentStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v7->_cardContentStack setAxis:a4->var0];
    [(UIStackView *)v7->_cardContentStack setDistribution:a4->var1];
    [(UIStackView *)v7->_cardContentStack setAlignment:a4->var2];
    [(UIStackView *)v7->_cardContentStack setSpacing:*&qword_10193E338];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * v14);
          v16 = [CarCardView alloc];
          v17 = [(CarCardView *)v16 initWithContent:v15, v19];
          [(UIStackView *)v7->_cardContentStack addArrangedSubview:v17];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }
  }

  return v7;
}

@end