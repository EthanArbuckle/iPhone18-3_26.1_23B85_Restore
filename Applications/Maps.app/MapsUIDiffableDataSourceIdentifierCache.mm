@interface MapsUIDiffableDataSourceIdentifierCache
- (id)_currentGeneration;
- (id)identifierForObject:(id)a3;
- (void)markGeneration;
@end

@implementation MapsUIDiffableDataSourceIdentifierCache

- (void)markGeneration
{
  objc_storeStrong(&self->_previousGeneration, self->_currentGeneration);
  currentGeneration = self->_currentGeneration;
  self->_currentGeneration = 0;
}

- (id)identifierForObject:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = [(NSMapTable *)self->_currentGeneration objectForKey:v4];
  if (v5)
  {
    goto LABEL_10;
  }

  v6 = [(NSMapTable *)self->_previousGeneration objectForKey:v4];
  if (v6)
  {
    v5 = v6;
LABEL_5:
    v7 = [(MapsUIDiffableDataSourceIdentifierCache *)self _currentGeneration];
    [v7 setObject:v5 forKey:v4];

    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 _maps_diffableDataSourceIdentifier];
    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
LABEL_9:
    v5 = 0;
  }

LABEL_10:

  return v5;
}

- (id)_currentGeneration
{
  currentGeneration = self->_currentGeneration;
  if (!currentGeneration)
  {
    v4 = +[NSMapTable strongToStrongObjectsMapTable];
    v5 = self->_currentGeneration;
    self->_currentGeneration = v4;

    currentGeneration = self->_currentGeneration;
  }

  return currentGeneration;
}

@end