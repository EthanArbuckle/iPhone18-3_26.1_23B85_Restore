@interface _MKStackingPlaceholderView
- (_MKStackingPlaceholderView)initWithHeight:(double)a3;
@end

@implementation _MKStackingPlaceholderView

- (_MKStackingPlaceholderView)initWithHeight:(double)a3
{
  v10.receiver = self;
  v10.super_class = _MKStackingPlaceholderView;
  v4 = [(_MKStackingPlaceholderView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v6 = [(_MKStackingPlaceholderView *)v4 heightAnchor];
    v7 = [v6 constraintEqualToConstant:a3];
    contentHeightConstraint = v5->_contentHeightConstraint;
    v5->_contentHeightConstraint = v7;

    [(NSLayoutConstraint *)v5->_contentHeightConstraint setActive:1];
  }

  return v5;
}

@end