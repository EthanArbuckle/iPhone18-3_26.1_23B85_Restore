void sub_29C8AD7CC(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([MEMORY[0x29EDC0C20] isTimeoutError:?])
  {
    NSLog(&cfstr_FailedToGetAcc.isa);
  }

  else
  {
    NSLog(&cfstr_ErrorLoadingMa.isa, v2);
  }
}