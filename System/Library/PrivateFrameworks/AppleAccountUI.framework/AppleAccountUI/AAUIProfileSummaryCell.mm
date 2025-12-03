@interface AAUIProfileSummaryCell
- (AAUIProfileSummaryCell)initWithName:(id)name email:(id)email image:(id)image;
- (void)layoutSubviews;
@end

@implementation AAUIProfileSummaryCell

- (AAUIProfileSummaryCell)initWithName:(id)name email:(id)email image:(id)image
{
  nameCopy = name;
  emailCopy = email;
  imageCopy = image;
  v15.receiver = self;
  v15.super_class = AAUIProfileSummaryCell;
  v11 = [(AAUIProfileSummaryCell *)&v15 initWithStyle:0 reuseIdentifier:nameCopy];
  if (v11)
  {
    v12 = [[AAUIProfileSummaryView alloc] initWithName:nameCopy email:emailCopy image:imageCopy];
    contentView = v11->_contentView;
    v11->_contentView = v12;

    [(AAUIProfileSummaryView *)v11->_contentView setHidesPhoto:1];
    [(AAUIProfileSummaryCell *)v11 addSubview:v11->_contentView];
  }

  return v11;
}

- (void)layoutSubviews
{
  contentView = self->_contentView;
  [(AAUIProfileSummaryCell *)self frame];
  v5 = v4;
  [(AAUIProfileSummaryCell *)self frame];
  [(AAUIProfileSummaryView *)contentView setFrame:0.0, 0.0, v5];
  v6.receiver = self;
  v6.super_class = AAUIProfileSummaryCell;
  [(AAUIProfileSummaryCell *)&v6 layoutSubviews];
}

@end