id sub_23B6AF928@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 databaseScope];
  *a2 = result;
  return result;
}

void *(*sub_23B6AF970(uint64_t a1))(void *result, char a2)
{
  *(a1 + 16) = v1;
  *a1 = [v1 databaseScope];
  *(a1 + 8) = 0;
  return sub_23B6AF9C8;
}

void *sub_23B6AF9C8(void *result, char a2)
{
  v2 = *(result + 8);
  if (a2)
  {
    if ((result[1] & 1) == 0)
    {
      return [result[2] setDatabaseScope_];
    }

    __break(1u);
  }

  if ((v2 & 1) == 0)
  {
    return [result[2] setDatabaseScope_];
  }

  __break(1u);
  return result;
}

void (*NSPersistentCloudKitContainerOptions.databaseScope.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_23B6AF970(v2);
  return sub_23B6AFA8C;
}

void sub_23B6AFA8C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}