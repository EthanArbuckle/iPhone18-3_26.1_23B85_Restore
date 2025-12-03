@interface MTIndexPathShifter
- (void)_setIndexPath:(unint64_t)path;
- (void)_shiftIndexPath:(unint64_t)path;
- (void)processChangeAtIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)setInitialIndexPath:(id)path;
@end

@implementation MTIndexPathShifter

- (void)setInitialIndexPath:(id)path
{
  pathCopy = path;
  objc_storeStrong(&self->_initialIndexPath, path);
  shiftedIndexPath = self->_shiftedIndexPath;
  self->_shiftedIndexPath = pathCopy;

  [(MTIndexPathShifter *)self setIsComplete:0];
}

- (void)processChangeAtIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  shiftedIndexPath = [(MTIndexPathShifter *)self shiftedIndexPath];
  section = [shiftedIndexPath section];
  section2 = [pathCopy section];

  if (section == section2 && ![(MTIndexPathShifter *)self isComplete])
  {
    switch(type)
    {
      case 3uLL:
        initialIndexPath = [(MTIndexPathShifter *)self initialIndexPath];
        v19 = [pathCopy isEqual:initialIndexPath];

        if (!v19)
        {
          [(MTIndexPathShifter *)self processChangeAtIndexPath:pathCopy forChangeType:2 newIndexPath:0];
          [(MTIndexPathShifter *)self processChangeAtIndexPath:0 forChangeType:1 newIndexPath:indexPathCopy];
          goto LABEL_3;
        }

        [(MTIndexPathShifter *)self setShiftedIndexPath:indexPathCopy];
        break;
      case 2uLL:
        initialIndexPath2 = [(MTIndexPathShifter *)self initialIndexPath];
        v17 = [initialIndexPath2 row];

        if ([pathCopy row] != v17)
        {
          if ([pathCopy row] >= v17)
          {
            goto LABEL_3;
          }

          selfCopy2 = self;
          v15 = -1;
          goto LABEL_18;
        }

        [(MTIndexPathShifter *)self _setIndexPath:0x7FFFFFFFFFFFFFFFLL];
        break;
      case 1uLL:
        initialIndexPath3 = [(MTIndexPathShifter *)self initialIndexPath];
        v13 = [initialIndexPath3 row];

        if ([indexPathCopy row] > v13)
        {
          goto LABEL_3;
        }

        selfCopy2 = self;
        v15 = 1;
LABEL_18:
        [(MTIndexPathShifter *)selfCopy2 _shiftIndexPath:v15];
        goto LABEL_3;
      default:
        goto LABEL_3;
    }

    [(MTIndexPathShifter *)self setIsComplete:1];
  }

LABEL_3:
}

- (void)_shiftIndexPath:(unint64_t)path
{
  shiftedIndexPath = [(MTIndexPathShifter *)self shiftedIndexPath];
  -[MTIndexPathShifter _setIndexPath:](self, "_setIndexPath:", [shiftedIndexPath row] + path);
}

- (void)_setIndexPath:(unint64_t)path
{
  shiftedIndexPath = [(MTIndexPathShifter *)self shiftedIndexPath];
  v6 = [shiftedIndexPath row];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    shiftedIndexPath2 = [(MTIndexPathShifter *)self shiftedIndexPath];
    v7 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", path, [shiftedIndexPath2 section]);
    [(MTIndexPathShifter *)self setShiftedIndexPath:v7];
  }
}

@end