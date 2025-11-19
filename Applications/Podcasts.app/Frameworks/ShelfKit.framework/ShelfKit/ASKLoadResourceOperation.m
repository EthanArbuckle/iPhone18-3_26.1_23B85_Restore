@interface ASKLoadResourceOperation
- (void)didCompleteWithResource:(id)a3 error:(id)a4;
@end

@implementation ASKLoadResourceOperation

- (void)didCompleteWithResource:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ASKLoadResourceOperation *)self outputBlock];
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, v9, v6);
    [(ASKLoadResourceOperation *)self setOutputBlock:0];
  }
}

@end