void sub_23397B45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23397B480(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FF0], OS_LOG_TYPE_ERROR))
    {
      sub_23397BC78();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateWithFriends:v5];
}

uint64_t sub_23397B788(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23397B7A0(uint64_t a1)
{
  v5 = [*(a1 + 32) _queue_friendWithUUID:*(a1 + 40)];
  v2 = [v5 copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_23397BBB8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_23397BBD4(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 uniqueName];
  sub_23397BBAC();
  _os_log_debug_impl(&dword_23397A000, v3, OS_LOG_TYPE_DEBUG, "Responding to resource bundle for template: %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_23397BC78()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_23397BBAC();
  sub_23397BBB8(&dword_23397A000, v0, v1, "Error returned from Fitness Friends Query: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_23397BCE0(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 UUID];
  sub_23397BBAC();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_23397A000, v3, OS_LOG_TYPE_ERROR, "Couldn't find a competition to determine badge style for friend: %{public}@ - %@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_23397BD98()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_23397BBAC();
  sub_23397BBB8(&dword_23397A000, v0, v1, "Couldn't find friend with UUID: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_23397BE00()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_23397BBAC();
  sub_23397BBB8(&dword_23397A000, v0, v1, "FriendUUID missing from template: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}