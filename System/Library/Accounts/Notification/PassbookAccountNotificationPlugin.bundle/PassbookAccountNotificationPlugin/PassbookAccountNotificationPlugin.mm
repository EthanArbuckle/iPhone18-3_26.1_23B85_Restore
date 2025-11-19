uint64_t sub_29C8FE01C(void *a1)
{
  v2 = [a1 accountType];
  v3 = [v2 identifier];

  if ([v3 isEqualToString:*MEMORY[0x29EDB81C8]])
  {
    v4 = [a1 aa_isAccountClass:*MEMORY[0x29EDBE2C0]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}