@interface MTIndexPathShifter
- (void)_setIndexPath:(unint64_t)a3;
- (void)_shiftIndexPath:(unint64_t)a3;
- (void)processChangeAtIndexPath:(id)a3 forChangeType:(unint64_t)a4 newIndexPath:(id)a5;
- (void)setInitialIndexPath:(id)a3;
@end

@implementation MTIndexPathShifter

- (void)setInitialIndexPath:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_initialIndexPath, a3);
  shiftedIndexPath = self->_shiftedIndexPath;
  self->_shiftedIndexPath = v5;

  [(MTIndexPathShifter *)self setIsComplete:0];
}

- (void)processChangeAtIndexPath:(id)a3 forChangeType:(unint64_t)a4 newIndexPath:(id)a5
{
  v20 = a3;
  v8 = a5;
  v9 = [(MTIndexPathShifter *)self shiftedIndexPath];
  v10 = [v9 section];
  v11 = [v20 section];

  if (v10 == v11 && ![(MTIndexPathShifter *)self isComplete])
  {
    switch(a4)
    {
      case 3uLL:
        v18 = [(MTIndexPathShifter *)self initialIndexPath];
        v19 = [v20 isEqual:v18];

        if (!v19)
        {
          [(MTIndexPathShifter *)self processChangeAtIndexPath:v20 forChangeType:2 newIndexPath:0];
          [(MTIndexPathShifter *)self processChangeAtIndexPath:0 forChangeType:1 newIndexPath:v8];
          goto LABEL_3;
        }

        [(MTIndexPathShifter *)self setShiftedIndexPath:v8];
        break;
      case 2uLL:
        v16 = [(MTIndexPathShifter *)self initialIndexPath];
        v17 = [v16 row];

        if ([v20 row] != v17)
        {
          if ([v20 row] >= v17)
          {
            goto LABEL_3;
          }

          v14 = self;
          v15 = -1;
          goto LABEL_18;
        }

        [(MTIndexPathShifter *)self _setIndexPath:0x7FFFFFFFFFFFFFFFLL];
        break;
      case 1uLL:
        v12 = [(MTIndexPathShifter *)self initialIndexPath];
        v13 = [v12 row];

        if ([v8 row] > v13)
        {
          goto LABEL_3;
        }

        v14 = self;
        v15 = 1;
LABEL_18:
        [(MTIndexPathShifter *)v14 _shiftIndexPath:v15];
        goto LABEL_3;
      default:
        goto LABEL_3;
    }

    [(MTIndexPathShifter *)self setIsComplete:1];
  }

LABEL_3:
}

- (void)_shiftIndexPath:(unint64_t)a3
{
  v5 = [(MTIndexPathShifter *)self shiftedIndexPath];
  -[MTIndexPathShifter _setIndexPath:](self, "_setIndexPath:", [v5 row] + a3);
}

- (void)_setIndexPath:(unint64_t)a3
{
  v5 = [(MTIndexPathShifter *)self shiftedIndexPath];
  v6 = [v5 row];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(MTIndexPathShifter *)self shiftedIndexPath];
    v7 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", a3, [v8 section]);
    [(MTIndexPathShifter *)self setShiftedIndexPath:v7];
  }
}

@end