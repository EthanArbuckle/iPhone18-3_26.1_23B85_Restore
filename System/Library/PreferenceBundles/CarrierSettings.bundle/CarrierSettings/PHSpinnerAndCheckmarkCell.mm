@interface PHSpinnerAndCheckmarkCell
- (void)_addSpinner;
- (void)_removeSpinner;
- (void)setLoading:(BOOL)loading;
@end

@implementation PHSpinnerAndCheckmarkCell

- (void)setLoading:(BOOL)loading
{
  v3 = *(self + 1216);
  if ((v3 & 1) == loading)
  {
    return;
  }

  v5 = v3 & 0xFE | loading;
  *(self + 1216) = v5;
  if (loading)
  {
    spinner = self->_spinner;
    if (!spinner || ([(UIActivityIndicatorView *)spinner superview], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 != self))
    {

      [(PHSpinnerAndCheckmarkCell *)self _addSpinner];
      return;
    }

    v5 = *(self + 1216);
  }

  if ((v5 & 1) == 0)
  {

    [(PHSpinnerAndCheckmarkCell *)self _removeSpinner];
  }
}

- (void)_addSpinner
{
  spinner = self->_spinner;
  if (!spinner)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:4];
    v5 = self->_spinner;
    self->_spinner = v4;

    [(UIActivityIndicatorView *)self->_spinner sizeToFit];
    spinner = self->_spinner;
  }

  accessoryView = [(PHSpinnerAndCheckmarkCell *)self accessoryView];

  if (spinner != accessoryView)
  {
    [(UIActivityIndicatorView *)self->_spinner startAnimating];
    v7 = self->_spinner;

    [(PHSpinnerAndCheckmarkCell *)self setAccessoryView:v7];
  }
}

- (void)_removeSpinner
{
  spinner = self->_spinner;
  accessoryView = [(PHSpinnerAndCheckmarkCell *)self accessoryView];

  if (spinner == accessoryView)
  {
    [(UIActivityIndicatorView *)self->_spinner stopAnimating];

    [(PHSpinnerAndCheckmarkCell *)self setAccessoryView:0];
  }
}

@end