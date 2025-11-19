@interface SCATGridPointPicker
- (BOOL)handleInputAction:(id)a3 withElement:(id)a4;
- (id)_initWithMenu:(id)a3;
- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5;
- (id)firstElementWithOptions:(int *)a3;
- (id)lastElementWithOptions:(int *)a3;
- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5;
- (void)scannerWillMakeManagerActive:(id)a3;
- (void)scannerWillMakeManagerActive:(id)a3 forDisplayID:(unsigned int)a4;
- (void)scannerWillMakeManagerInactive:(id)a3 activeElementManager:(id)a4;
@end

@implementation SCATGridPointPicker

- (id)_initWithMenu:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SCATGridPointPicker;
  v5 = [(SCATPointPicker *)&v8 _initWithMenu:v4];
  if (v5)
  {
    v6 = [(SCATPointPickerViewController *)[SCATGridPointPickerViewController alloc] initWithElementManager:v5 menu:v4];
    [v5 setVisualProvider:v6];
  }

  return v5;
}

- (id)firstElementWithOptions:(int *)a3
{
  v4 = [(SCATGridPointPicker *)self _gridViewController];
  v5 = [v4 firstElementWithOptions:a3];

  return v5;
}

- (id)lastElementWithOptions:(int *)a3
{
  v4 = [(SCATGridPointPicker *)self _gridViewController];
  v5 = [v4 lastElementWithOptions:a3];

  return v5;
}

- (id)elementAfter:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v8 = a3;
  v9 = [(SCATGridPointPicker *)self _gridViewController];
  v10 = [v9 elementAfter:v8 didWrap:a4 options:a5];

  return v10;
}

- (id)elementBefore:(id)a3 didWrap:(BOOL *)a4 options:(int *)a5
{
  v8 = a3;
  v9 = [(SCATGridPointPicker *)self _gridViewController];
  v10 = [v9 elementBefore:v8 didWrap:a4 options:a5];

  return v10;
}

- (void)driver:(id)a3 didFocusOnContext:(id)a4 oldContext:(id)a5
{
  v12.receiver = self;
  v12.super_class = SCATGridPointPicker;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(SCATElementManager *)&v12 driver:v10 didFocusOnContext:v9 oldContext:v8];
  v11 = [(SCATGridPointPicker *)self _gridViewController:v12.receiver];
  [v11 driver:v10 didFocusOnContext:v9 oldContext:v8];
}

- (void)scannerWillMakeManagerActive:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCATGridPointPicker;
  v4 = a3;
  [(SCATElementManager *)&v6 scannerWillMakeManagerActive:v4];
  v5 = [(SCATGridPointPicker *)self _gridViewController:v6.receiver];
  [v5 scannerWillMakeManagerActive:v4];
}

- (void)scannerWillMakeManagerActive:(id)a3 forDisplayID:(unsigned int)a4
{
  v4 = *&a4;
  v8.receiver = self;
  v8.super_class = SCATGridPointPicker;
  v6 = a3;
  [(SCATElementManager *)&v8 scannerWillMakeManagerActive:v6];
  v7 = [(SCATGridPointPicker *)self _gridViewController:v8.receiver];
  [v7 scannerWillMakeManagerActive:v6 forDisplayID:v4];
}

- (void)scannerWillMakeManagerInactive:(id)a3 activeElementManager:(id)a4
{
  v9.receiver = self;
  v9.super_class = SCATGridPointPicker;
  v6 = a4;
  v7 = a3;
  [(SCATElementManager *)&v9 scannerWillMakeManagerInactive:v7 activeElementManager:v6];
  v8 = [(SCATGridPointPicker *)self _gridViewController:v9.receiver];
  [v8 scannerWillMakeManagerInactive:v7 activeElementManager:v6];
}

- (BOOL)handleInputAction:(id)a3 withElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SCATGridPointPicker;
  if ([(SCATElementManager *)&v11 handleInputAction:v6 withElement:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(SCATGridPointPicker *)self _gridViewController];
    v8 = [v9 handleInputAction:v6 withElement:v7];
  }

  return v8;
}

@end