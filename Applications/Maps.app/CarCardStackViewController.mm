@interface CarCardStackViewController
- (CarCardStackViewController)initWithCarCardContentControllers:(id)controllers layout:(id *)layout;
- (NSArray)cardContentControllers;
- (NSArray)cardViews;
- (void)addCardContentController:(id)controller;
- (void)insertCardContentController:(id)controller atIndex:(unint64_t)index;
- (void)removeCardContentController:(id)controller;
- (void)viewDidLoad;
@end

@implementation CarCardStackViewController

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = CarCardStackViewController;
  [(CarCardStackViewController *)&v21 viewDidLoad];
  view = [(CarCardStackViewController *)self view];
  [view addSubview:self->_cardContentStack];

  topAnchor = [(UIStackView *)self->_cardContentStack topAnchor];
  view2 = [(CarCardStackViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v22[0] = v17;
  bottomAnchor = [(UIStackView *)self->_cardContentStack bottomAnchor];
  view3 = [(CarCardStackViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v4 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v22[1] = v4;
  leftAnchor = [(UIStackView *)self->_cardContentStack leftAnchor];
  view4 = [(CarCardStackViewController *)self view];
  leftAnchor2 = [view4 leftAnchor];
  v8 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v22[2] = v8;
  rightAnchor = [(UIStackView *)self->_cardContentStack rightAnchor];
  view5 = [(CarCardStackViewController *)self view];
  rightAnchor2 = [view5 rightAnchor];
  v12 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v22[3] = v12;
  v13 = [NSArray arrayWithObjects:v22 count:4];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)removeCardContentController:(id)controller
{
  controllerCopy = controller;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  cardContentStack = [(CarCardStackViewController *)self cardContentStack];
  arrangedSubviews = [cardContentStack arrangedSubviews];

  v7 = [arrangedSubviews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(arrangedSubviews);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        content = [v11 content];

        if (content == controllerCopy)
        {
          cardContentStack2 = [(CarCardStackViewController *)self cardContentStack];
          [cardContentStack2 _maps_removeArrangedSubview:v11];

          goto LABEL_11;
        }
      }

      v8 = [arrangedSubviews countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)insertCardContentController:(id)controller atIndex:(unint64_t)index
{
  controllerCopy = controller;
  v8 = [[CarCardView alloc] initWithContent:controllerCopy];

  cardContentStack = [(CarCardStackViewController *)self cardContentStack];
  [cardContentStack insertArrangedSubview:v8 atIndex:index];
}

- (void)addCardContentController:(id)controller
{
  controllerCopy = controller;
  v6 = [[CarCardView alloc] initWithContent:controllerCopy];

  cardContentStack = [(CarCardStackViewController *)self cardContentStack];
  [cardContentStack addArrangedSubview:v6];
}

- (NSArray)cardViews
{
  cardContentStack = [(CarCardStackViewController *)self cardContentStack];
  arrangedSubviews = [cardContentStack arrangedSubviews];

  return arrangedSubviews;
}

- (NSArray)cardContentControllers
{
  cardContentStack = [(CarCardStackViewController *)self cardContentStack];
  arrangedSubviews = [cardContentStack arrangedSubviews];
  v4 = [arrangedSubviews valueForKey:@"content"];

  return v4;
}

- (CarCardStackViewController)initWithCarCardContentControllers:(id)controllers layout:(id *)layout
{
  controllersCopy = controllers;
  v23.receiver = self;
  v23.super_class = CarCardStackViewController;
  v7 = [(CarCardStackViewController *)&v23 init];
  if (v7)
  {
    v8 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    cardContentStack = v7->_cardContentStack;
    v7->_cardContentStack = v8;

    [(UIStackView *)v7->_cardContentStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v7->_cardContentStack setAxis:layout->var0];
    [(UIStackView *)v7->_cardContentStack setDistribution:layout->var1];
    [(UIStackView *)v7->_cardContentStack setAlignment:layout->var2];
    [(UIStackView *)v7->_cardContentStack setSpacing:*&qword_10193E338];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = controllersCopy;
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