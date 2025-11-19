uint64_t ASMXPCGetNextClientID()
{
  if (ASMXPCGetNextClientID_sOnce != -1)
  {
    ASMXPCGetNextClientID_cold_1();
  }

  return atomic_fetch_add(&ASMXPCGetNextClientID_sNext, 1u) + 1;
}

uint64_t __ASMXPCGetNextClientID_block_invoke()
{
  result = RandomBytes();
  ASMXPCGetNextClientID_sNext = word_27E30C38A << 16;
  return result;
}

uint64_t ASMXPCGetNextConnectionID()
{
  if (ASMXPCGetNextConnectionID_sOnce != -1)
  {
    ASMXPCGetNextConnectionID_cold_1();
  }

  return atomic_fetch_add(&ASMXPCGetNextConnectionID_sNext, 1u) + 1;
}

uint64_t __ASMXPCGetNextConnectionID_block_invoke()
{
  result = RandomBytes();
  ASMXPCGetNextConnectionID_sNext = word_27E30C39A << 16;
  return result;
}

id ASMErrorF()
{
  v0 = NSErrorV();

  return v0;
}