@interface _NSPlaceholderObservation
- (_NSPlaceholderObservation)initWithObservable:(id)a3 blockSink:(id)a4 tag:(int)a5;
- (_NSPlaceholderObservation)initWithObservable:(id)a3 observer:(id)a4;
@end

@implementation _NSPlaceholderObservation

- (_NSPlaceholderObservation)initWithObservable:(id)a3 blockSink:(id)a4 tag:(int)a5
{
  v5 = *&a5;
  v8 = [a3 conformsToProtocol:&unk_1EEF6F180];
  v9 = off_1E69EED18;
  if (!v8)
  {
    v9 = off_1E69EEC90;
  }

  v10 = objc_alloc(*v9);

  return [v10 initWithObservable:a3 blockSink:a4 tag:v5];
}

- (_NSPlaceholderObservation)initWithObservable:(id)a3 observer:(id)a4
{
  v6 = [a3 conformsToProtocol:&unk_1EEF6F180];
  v7 = [a4 conformsToProtocol:&unk_1EEF70E88];
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && [a3 conformsToProtocol:&unk_1EEF70E88])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Observable object %@ cannot also be an owning observer.", a3), 0}]);
  }

  v9 = [a4 conformsToProtocol:&unk_1EEF6F120];
  v10 = off_1E69EECA8;
  if (v9)
  {
    v10 = off_1E69EED10;
  }

  v11 = off_1E69EED20;
  if (v9)
  {
    v11 = off_1E69EECF0;
  }

  if (v6)
  {
    v10 = v11;
  }

  if (v9)
  {
    v12 = off_1E69EED28;
  }

  else
  {
    v12 = off_1E69EED30;
  }

  if (v7)
  {
    v10 = v12;
  }

  v13 = objc_alloc(*v10);

  return [v13 initWithObservable:a3 observer:a4];
}

@end