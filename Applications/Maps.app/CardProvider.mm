@interface CardProvider
- (id)cardWithBlur:(BOOL)blur;
- (void)recycleCard:(id)card;
@end

@implementation CardProvider

- (void)recycleCard:(id)card
{
  cachedCards = self->_cachedCards;
  cardCopy = card;
  [(NSMutableSet *)cachedCards addObject:cardCopy];
  [(NSMutableSet *)self->_cards removeObject:cardCopy];
}

- (id)cardWithBlur:(BOOL)blur
{
  blurCopy = blur;
  if (![(NSMutableSet *)self->_cachedCards count]|| ([(NSMutableSet *)self->_cachedCards anyObject], v5 = objc_claimAutoreleasedReturnValue(), [(NSMutableSet *)self->_cachedCards removeObject:v5], !v5))
  {
    v5 = [[CardView alloc] initAllowingBlurred:blurCopy];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  cards = self->_cards;
  if (!cards)
  {
    v7 = +[NSMutableSet set];
    v8 = self->_cards;
    self->_cards = v7;

    cards = self->_cards;
  }

  [(NSMutableSet *)cards addObject:v5];

  return v5;
}

@end