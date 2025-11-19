void sub_13B8(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "DMCAccountNotificationPlugin: Failed to update RM account with error: %{public}@", &v6, 0xCu);
    }
  }
}