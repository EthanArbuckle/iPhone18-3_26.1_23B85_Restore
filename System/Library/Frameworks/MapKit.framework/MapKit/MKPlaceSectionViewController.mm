@interface MKPlaceSectionViewController
- (MKPlaceSectionView)sectionView;
- (void)dealloc;
- (void)loadView;
- (void)stackViewNeedsLayout:(id)a3;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
@end

@implementation MKPlaceSectionViewController

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v5 = [a4 userInterfaceStyle];
  v6 = [(MKPlaceSectionViewController *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {

    [(UIViewController *)self infoCardThemeChanged];
  }
}

- (void)stackViewNeedsLayout:(id)a3
{
  v4 = [(MKPlaceSectionViewController *)self parentViewController];
  v3 = [v4 view];
  [v3 _mapkit_layoutIfNeeded];
}

- (MKPlaceSectionView)sectionView
{
  sectionView = self->_sectionView;
  if (!sectionView)
  {
    v4 = [(MKPlaceSectionViewController *)self view];
    sectionView = self->_sectionView;
  }

  return sectionView;
}

- (void)dealloc
{
  [(MKPlaceSectionView *)self->_sectionView setDelegate:0];
  v3.receiver = self;
  v3.super_class = MKPlaceSectionViewController;
  [(MKPlaceSectionViewController *)&v3 dealloc];
}

- (void)loadView
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [MKPlaceSectionView alloc];
  v4 = [(MKPlaceSectionView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  sectionView = self->_sectionView;
  self->_sectionView = v4;

  [(MKPlaceSectionView *)self->_sectionView setDelegate:self];
  [(_MKStackView *)self->_sectionView setStackAnimationDelegate:self];
  [(MKPlaceSectionViewController *)self setView:self->_sectionView];
  v8[0] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7 = [(MKPlaceSectionViewController *)self registerForTraitChanges:v6 withAction:sel_traitEnvironment_didChangeTraitCollection_];
}

@end