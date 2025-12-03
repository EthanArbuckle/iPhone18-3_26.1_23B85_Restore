@interface MapsUIDiffableDataSourceIdentifierCache
- (id)_currentGeneration;
- (id)identifierForObject:(id)object;
- (void)markGeneration;
@end

@implementation MapsUIDiffableDataSourceIdentifierCache

- (void)markGeneration
{
  objc_storeStrong(&self->_previousGeneration, self->_currentGeneration);
  currentGeneration = self->_currentGeneration;
  self->_currentGeneration = 0;
}

- (id)identifierForObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    goto LABEL_9;
  }

  _maps_diffableDataSourceIdentifier = [(NSMapTable *)self->_currentGeneration objectForKey:objectCopy];
  if (_maps_diffableDataSourceIdentifier)
  {
    goto LABEL_10;
  }

  v6 = [(NSMapTable *)self->_previousGeneration objectForKey:objectCopy];
  if (v6)
  {
    _maps_diffableDataSourceIdentifier = v6;
LABEL_5:
    _currentGeneration = [(MapsUIDiffableDataSourceIdentifierCache *)self _currentGeneration];
    [_currentGeneration setObject:_maps_diffableDataSourceIdentifier forKey:objectCopy];

    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    _maps_diffableDataSourceIdentifier = [objectCopy _maps_diffableDataSourceIdentifier];
    if (_maps_diffableDataSourceIdentifier)
    {
      goto LABEL_5;
    }
  }

  else
  {
LABEL_9:
    _maps_diffableDataSourceIdentifier = 0;
  }

LABEL_10:

  return _maps_diffableDataSourceIdentifier;
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