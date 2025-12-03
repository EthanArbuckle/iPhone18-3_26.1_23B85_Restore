@interface MPAVRoutingTableViewHeaderView
- (MPAVRoutingTableViewHeaderView)initWithReuseIdentifier:(id)identifier;
- (UIEdgeInsets)titleInsets;
- (void)_updateFont;
- (void)layoutSubviews;
@end

@implementation MPAVRoutingTableViewHeaderView

- (UIEdgeInsets)titleInsets
{
  top = self->_titleInsets.top;
  left = self->_titleInsets.left;
  bottom = self->_titleInsets.bottom;
  right = self->_titleInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_updateFont
{
  v7 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD10] maximumContentSizeCategory:*MEMORY[0x1E69DDC58]];
  fontDescriptor = [v7 fontDescriptor];
  v4 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];
  textLabel = [(MPAVRoutingTableViewHeaderView *)self textLabel];
  [textLabel setFont:v5];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MPAVRoutingTableViewHeaderView;
  [(MPAVRoutingTableViewHeaderView *)&v3 layoutSubviews];
  [(MPAVRoutingTableViewHeaderView *)self _updateFont];
}

- (MPAVRoutingTableViewHeaderView)initWithReuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = MPAVRoutingTableViewHeaderView;
  v3 = [(MPAVRoutingTableViewHeaderView *)&v8 initWithReuseIdentifier:identifier];
  if (v3)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    textLabel = [(MPAVRoutingTableViewHeaderView *)v3 textLabel];
    [textLabel setTextColor:whiteColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(MPAVRoutingTableViewHeaderView *)v3 setTintColor:clearColor];
  }

  return v3;
}

@end